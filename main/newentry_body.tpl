{HEADER}
		<div class="container container-main">
				<header>
					<h2 class="text-center">{TITLE}</h2>
				</header>
				<div id="message"></div>
				<div class="text-center">
					<ul class="list-inline">
						<li><a href="index.php{PARAMLANG_A}" title="{LANG_BACK}"><i class="fa fa-home"></i>&nbsp;{LANG_BACK_TO_MAINPAGE}</a><li>
					</ul>
					<hr>
				</div>
		{TEMPLATE_PREVIEW}
		{TEMPLATE_ERRORMESSAGE}
				<div>
					<form class="form-horizontal" name="formular" action="{FORM_ACTION}" method="post">
						<input type="hidden" name="sent" value="1">
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputName">{LANG_NEW_ENTRY_NAME} *</label>
							<div class="col-lg-4">
								<input id="inputName" class="form-control" type="text" name="{FORM_ELEMENT_NAME}" value="{POST_NAME}" required="required" autofocus="autofocus">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputCity">{LANG_NEW_ENTRY_CITY} </label>
							<div class="col-lg-4">
								<input id="inputCity" class="form-control" type="text" name="{FORM_ELEMENT_CITY}" value="{POST_CITY}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputEmail">{LANG_NEW_ENTRY_EMAIL} {EMAIL_NECESSARY}</label>
							<div class="col-lg-4">
								<input id="inputEmail" class="form-control" type="email" name="{FORM_ELEMENT_EMAIL}" value="{POST_EMAIL}"{EMAIL_REQUIRED}>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputIcq">{LANG_NEW_ENTRY_ICQ}</label>
							<div class="col-lg-4">
								<input id="inputIcq" class="form-control" type="text" name="{FORM_ELEMENT_ICQ}" value="{POST_ICQ}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputAim">{LANG_NEW_ENTRY_AIM}</label>
							<div class="col-lg-4">
								<input id="inputAim" class="form-control" type="text" name="{FORM_ELEMENT_AIM}" value="{POST_AIM}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputFb">{LANG_NEW_ENTRY_FB}</label>
							<div class="col-lg-4">
								<input id="inputFb" class="form-control" type="text" name="{FORM_ELEMENT_FB}" value="{POST_FB}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputTwitter">{LANG_NEW_ENTRY_TWITTER}</label>
							<div class="col-lg-4">
								<input id="inputTwitter" class="form-control" type="text" name="{FORM_ELEMENT_TWITTER}" value="{POST_TWITTER}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputHp">{LANG_NEW_ENTRY_HP}</label>
							<div class="col-lg-4">
								<input id="inputHp" class="form-control" type="url" name="{FORM_ELEMENT_HP}" value="{POST_HP}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="inputText">{LANG_NEW_ENTRY_MESSAGE} *</label>
							<div class="col-lg-4">
{TEMPLATE_BBCODES}
								<textarea id="inputText" class="form-control" name="message" rows="10" style="resize:vertical" required="required">{POST_MESSAGE}</textarea>
{TEMPLATE_SMILEYS}
							</div>
						</div>
						<p class="text-info">{LANG_NECESSARY_FIELDS}</p>
{TEMPLATE_USER_NOTIFICATION}
{TEMPLATE_USER_SHOW_EMAIL}
{TEMPLATE_USER_ACCEPT_AKISMET_SERVICE}
{TEMPLATE_CAPTCHA}
						<br>
						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<input class="btn btn-primary" type="submit" name="preview" value="{LANG_PREVIEW}">
								<input class="btn btn-primary" type="submit" name="send" value="{LANG_SEND}">
								<input type="reset" class="btn btn-default">
							</div>
						</div>
					</form>
					<hr>
				</div>
{TEMPLATE_COPYRIGHT}
	</div>
{TEMPLATE_FOOTER}

