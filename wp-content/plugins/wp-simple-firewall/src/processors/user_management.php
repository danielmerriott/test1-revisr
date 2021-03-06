<?php
/**
 * Copyright (c) 2015 iControlWP <support@icontrolwp.com>
 * All rights reserved.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

if ( !class_exists( 'ICWP_WPSF_Processor_UserManagement_V4', false ) ):

require_once( dirname(__FILE__).ICWP_DS.'base.php' );

class ICWP_WPSF_Processor_UserManagement_V4 extends ICWP_WPSF_Processor_Base {

	/**
	 * @var ICWP_WPSF_Processor_UserManagement_Sessions
	 */
	protected $oProcessorSessions;

	/**
	 * @return bool
	 */
	public function run() {
		$oWp = $this->loadWpFunctionsProcessor();

		// XML-RPC Compatibility
		if ( $oWp->getIsXmlrpc() && $this->getIsOption( 'enable_xmlrpc_compatibility', 'Y' ) ) {
			return true;
		}

		if ( $this->getIsOption( 'enable_user_management', 'Y' ) ) {
			$this->getProcessorSessions()->run();
		}

		if ( is_email( $this->getOption( 'enable_admin_login_email_notification' ) ) ) {
			add_action( 'wp_login', array( $this, 'sendLoginEmailNotification' ) );
		}

		return true;
	}

	/**
	 * @param $sUsername
	 * @return mixed
	 */
	public function sendLoginEmailNotification( $sUsername ) {
		if ( empty( $sUsername ) ) {
			return false;
		}

		$oUser = get_user_by( 'login', $sUsername );
		if ( !( $oUser instanceof WP_User ) ) {
			return false;
		}

		$fIsAdministrator = isset( $oUser->caps['administrator'] ) && $oUser->caps['administrator'];

		if ( !$fIsAdministrator ) {
			return false;
		}

		$oDp = $this->loadDataProcessor();
		$oEmailer = $this->getFeatureOptions()->getEmailProcessor();

		$aMessage = array(
			_wpsf__( 'As requested, the WordPress Simple Firewall is notifying you of an administrator login to a WordPress site that you manage.' ),
			_wpsf__( 'Details for this user are below:' ),
			'- '.sprintf( _wpsf__( 'Site URL: %s' ), home_url() ),
			'- '.sprintf( _wpsf__( 'Username: %s' ), $sUsername ),
			'- '.sprintf( _wpsf__( 'IP Address: %s' ), $oDp->getVisitorIpAddress( true ) ),
			_wpsf__( 'Thanks.' )
		);

		$fResult = $oEmailer->sendEmailTo(
			$this->getOption( 'enable_admin_login_email_notification' ),
			sprintf( 'Email Notice: An Administrator Just Logged Into %s', home_url() ),
			$aMessage
		);
		return $fResult;
	}

	/**
	 * @return ICWP_WPSF_Processor_UserManagement_Sessions
	 */
	protected function getProcessorSessions() {
		if ( !isset( $this->oProcessorSessions ) ) {
			require_once( dirname(__FILE__).ICWP_DS.'usermanagement_sessions.php' );
			$this->oProcessorSessions = new ICWP_WPSF_Processor_UserManagement_Sessions( $this->getFeatureOptions() );
		}
		return $this->oProcessorSessions;
	}

	/**
	 * @param string $sWpUsername
	 * @return array|bool
	 */
	public function getActiveUserSessionRecords( $sWpUsername = '' ) {
		return $this->getProcessorSessions()->getActiveUserSessionRecords( $sWpUsername );
	}

	/**
	 * @param integer $nTime - number of seconds back from now to look
	 * @return array|boolean
	 */
	public function getPendingOrFailedUserSessionRecordsSince( $nTime = 0 ) {
		return $this->getProcessorSessions()->getPendingOrFailedUserSessionRecordsSince( $nTime );
	}
}
endif;

if ( !class_exists( 'ICWP_WPSF_Processor_UserManagement', false ) ):
	class ICWP_WPSF_Processor_UserManagement extends ICWP_WPSF_Processor_UserManagement_V4 { }
endif;