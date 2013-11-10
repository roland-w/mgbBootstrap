							<div class="captcha text-center">
								<img src="includes/captcha.inc.php?{CAPTCHA_UNIQUE_ID}" title="{LANG_SECURITY_CODE}" alt="{LANG_SECURITY_CODE}"><br><br>
								<div class="form-group">
									<div class="col-lg-offset-5 col-lg-2">
										<div class="input-group">
											<input class="form-control" type="text" name="{FORM_ELEMENT_CAPTCHA}" value="" autocomplete="off">
											<span class="input-group-btn">
												<button class="btn btn-default" type="submit" title='{LANG_CAPTCHA_REFRESH}'>
													<i class="fa fa-refresh fa-spin"></i>
												</button>
											</span>
										</div>
										
										
									</div>
								</div>
								
							</div>
							<input type="hidden" name="refresh_captcha" value="1">