{if $smarty.server.REQUEST_URI == "/"}
	{foreach $content as $c}
		<div class="header">
			<h2>Tabula-Rasa.pw > <strong>{$c->title}</strong></h2>

			<div class="breadcrumb-wrapper">
				<ol class="breadcrumb">
					<li><a href="{$smarty.const.WWW_TOP}{$site->home_link}">Home</a></li>
				</ol>
			</div>

		</div>
		{$c->body}
	{/foreach}
{else}
	{foreach $content as $c}
		<div class="header">
			<h2>Help > <strong>{$c->title}</strong></h2>

			<div class="breadcrumb-wrapper">
				<ol class="breadcrumb">
					<li><a href="{$smarty.const.WWW_TOP}{$site->home_link}">Home</a></li>
					/ {$c->title}
				</ol>
			</div>
		</div>
		{$c->body}
	{/foreach}
{/if}