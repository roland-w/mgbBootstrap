{HEADER}
		<div class="container container-main">
				<header>
					<h2 class="text-center">{TITLE}</h2>
				</header>
				<div class="text-center">
					<ul class="list-inline">
						<li><a href="index.php{PARAMLANG_A}" title="{LANG_BACK}"><i class="fa fa-home"></i> {LANG_BACK_TO_MAINPAGE}</a><li>
					</ul>
					<hr>
				</div>
{TEMPLATE_ERRORMESSAGE}
					<form class="form-horizontal" action="{FORM_ACTION}" method="post">
						<input type="hidden" name="sent" value="1">
						 <div class="form-group">
							<label class="control-label col-lg-2" for="inputName">{LANG_EMAIL_NAME} *</label>
							<div class="col-lg-4">
								<input type="text" id="inputName" class="form-control" name="{FORM_ELEMENT_NAME}" value="{POST_NAME}" placeholder="Max Muster" required="required" autofocus="autofocus">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputEmail">{LANG_EMAIL_EMAIL} *</label>
							<div class="col-lg-4">
								<input type="email" id="inputEmail" class="form-control" name="{FORM_ELEMENT_EMAIL}" value="{POST_EMAIL}" placeholder="max@muster.com" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputText">{LANG_EMAIL_MESSAGE} *</label>
							<div class="col-lg-4">
								<textarea id="inputText" class="form-control" name="{FORM_ELEMENT_MESSAGE}" rows="10" style="resize:vertical" required="required">{POST_MESSAGE}</textarea>
							</div>
						</div>
							<p class="text-info">{LANG_NECESSARY_FIELDS}</p>
							<p>{LANG_EMAIL_SENT_TO}&nbsp;<strong>{EMAIL_RECEIVER}</strong></p>
							<div class="checkbox">
								<label>{LANG_EMAIL_SENDCOPYTOME}
									<input type="checkbox" name="user_sendcopytome" value="1"{CHECKED}>
								</label>
							</div>
{TEMPLATE_USER_ACCEPT_AKISMET_SERVICE}
{TEMPLATE_CAPTCHA}
						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<input class="btn btn-primary" type="submit" name="send_mail_button" value="{LANG_SEND}"/>
								<input type="reset" class="btn"/>
							</div>
						</div>
					</form>
					<hr>
{TEMPLATE_COPYRIGHT}
	</div>
{TEMPLATE_FOOTER}