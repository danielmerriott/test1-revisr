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

if ( !class_exists( 'ICWP_WPSF_Processor_CommentsFilter', false ) ):

require_once( dirname(__FILE__).ICWP_DS.'base.php' );

class ICWP_WPSF_Processor_CommentsFilter_V2 extends ICWP_WPSF_Processor_Base {

	/**
	 */
	public function run() {
		/** @var ICWP_WPSF_FeatureHandler_CommentsFilter $oFO */
		$oFO = $this->getFeatureOptions();
		add_filter( $oFO->doPluginPrefix( 'if-do-comments-check' ), array( $this, 'getIfDoCommentsCheck' ) );

		if ( $this->getIsOption( 'enable_comments_gasp_protection', 'Y' ) ) {
			require_once( dirname(__FILE__).ICWP_DS.'commentsfilter_antibotspam.php' );
			$oBotSpamProcessor = new ICWP_WPSF_Processor_CommentsFilter_AntiBotSpam( $oFO );
			$oBotSpamProcessor->run();
		}

		if ( $this->getIsOption( 'enable_comments_human_spam_filter', 'Y' ) && $this->loadWpFunctionsProcessor()->comments_getIsCommentPost() ) {
			require_once( dirname(__FILE__).ICWP_DS.'commentsfilter_humanspam.php' );
			$oHumanSpamProcessor = new ICWP_WPSF_Processor_CommentsFilter_HumanSpam( $oFO );
			$oHumanSpamProcessor->run();
		}

		// Warning notice about akismet clashing
		add_filter( $oFO->doPluginPrefix( 'admin_notices' ), array( $this, 'adminNoticeWarningAkismetRunning' ) );

		add_filter( 'pre_comment_approved',				array( $this, 'doSetCommentStatus' ), 1 );
		add_filter( 'pre_comment_content',				array( $this, 'doInsertCommentStatusExplanation' ), 1, 1 );
		add_filter( 'comment_notification_recipients',	array( $this, 'doClearCommentNotificationEmail_Filter' ), 100, 1 );
	}

	public function adminNoticeWarningAkismetRunning( $aAdminNotices ) {
		// We only warn when the human spam filter is running
		if ( !$this->getIsOption( 'enable_comments_human_spam_filter', 'Y' ) ) {
			return $aAdminNotices;
		}

		$oWp = $this->loadWpFunctionsProcessor();

		$sActivePluginFile = $oWp->getIsPluginActive( 'Akismet' );
		if ( $sActivePluginFile ) {
			$sMessage = _wpsf__( 'It appears you have Akismet Anti-SPAM running alongside the Simple Firewall Anti-SPAM.' )
						.' <strong>'._wpsf__('This is not recommended and you should disable Akismet.').'</strong>';
			$sMessage .= '<br />'.sprintf(
					'<a href="%s" id="fromIcwp" class="button">%s</a>',
					$oWp->getPluginDeactivateLink( $sActivePluginFile ),
					_wpsf__( 'Click to deactivate Akismet now' )
				);
			$aAdminNotices[] = $this->getAdminNoticeHtml( $sMessage, 'error' );
		}
		return $aAdminNotices;
	}

	/**
	 * Always default to true, and if false, return that.
	 *
	 * @param boolean $fIfDoCheck
	 *
	 * @return boolean
	 */
	public function getIfDoCommentsCheck( $fIfDoCheck ) {
		if ( !$fIfDoCheck ) {
			return $fIfDoCheck;
		}

		if ( is_user_logged_in() ) {
			return false;
		}

		$oWp = $this->loadWpFunctionsProcessor();
		if ( !$oWp->comments_getIfCommentsOpen() ) {
			return false;
		}

		return $fIfDoCheck;
	}

	/**
	 * We set the final approval status of the comments if we've set it in our scans, and empties the notification email
	 * in case we "trash" it (since WP sends out a notification email if it's anything but SPAM)
	 *
	 * @param $sApprovalStatus
	 * @return string
	 */
	public function doSetCommentStatus( $sApprovalStatus ) {
		$sStatus = apply_filters( $this->getFeatureOptions()->doPluginPrefix( 'comments_filter_status' ), '' );
		return empty( $sStatus ) ? $sApprovalStatus : $sStatus;
	}

	/**
	 * @param string $sCommentContent
	 * @return string
	 */
	public function doInsertCommentStatusExplanation( $sCommentContent ) {

		$sExplanation = apply_filters( $this->getFeatureOptions()->doPluginPrefix( 'comments_filter_status_explanation' ), '' );

		// If either spam filtering process left an explanation, we add it here
		if ( !empty( $sExplanation ) ) {
			$sCommentContent = $sExplanation.$sCommentContent;
		}
		return $sCommentContent;
	}

	/**
	 * When you set a new comment as anything but 'spam' a notification email is sent to the post author.
	 * We suppress this for when we mark as trash by emptying the email notifications list.
	 *
	 * @param array $aEmails
	 * @return array
	 */
	public function doClearCommentNotificationEmail_Filter( $aEmails ) {
		$sStatus = apply_filters( $this->getFeatureOptions()->doPluginPrefix( 'comments_filter_status' ), '' );
		if ( $sStatus == 'trash' ) {
			$aEmails = array();
		}
		return $aEmails;
	}

}
endif;

if ( !class_exists( 'ICWP_WPSF_Processor_CommentsFilter', false ) ):
	class ICWP_WPSF_Processor_CommentsFilter extends ICWP_WPSF_Processor_CommentsFilter_V2 { }
endif;
