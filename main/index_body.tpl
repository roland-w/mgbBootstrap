{HEADER}
		<div class="container container-main">
			<header>
				<h2 class="text-center">{TITLE}</h2>
			</header>
			<div id="message"></div>
			<div class="announcement">
			{TEMPLATE_ANNOUNCEMENT_MESSAGE}
			</div>
			<div class="text-center hidden-print">
				<ul class="list-inline">
					<li><a href="newentry.php{PARAMLANG_A}" title="{LANG_NEW_ENTRY_DESCR}"><i class="fa fa-pencil"></i> {LANG_NEW_ENTRY}</a><li>
					<li><a href="email.php?id=admin{PARAMLANG_B}" title="{LANG_CONTACT_DESCR}"><i class="fa fa-envelope"></i> {LANG_CONTACT}</a></li>
				</ul>
				<p>{LANG_HOW_MANY_ENTRIES}</p>
				<hr>
			</div>
			<div class="body-entrys">
				{TEMPLATE_SCROLLING_FUNCTION}
				<div class="entrys">
				{TEMPLATE_ENTRIES}
				</div>
				{TEMPLATE_SCROLLING_FUNCTION}
				<hr>
			</div>
{TEMPLATE_COPYRIGHT}
		</div>
{TEMPLATE_FOOTER}
