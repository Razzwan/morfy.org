{extends 'layout.tpl'}
{block 'content'}
	<div class="container container-content">
	    <div class="row">
	        <div class="col-md-9">
                {if Url::getUriSegment(1) == 'plugins'}
                    <div class="plugins-table">
                        {Morfy::factory()->parsedown(file_get_contents('https://raw.githubusercontent.com/morfy-cms/plugins/master/plugins-list-en.md'))}
                    </div>
                {else}
                    {$content}
                {/if}
	        </div>
	        <div class="col-md-3 text-center">
                <ul class="nav nav-list">
                    <li {if Url::getUriSegment(0) == 'download' && Url::getUriSegment(1) == ''} class="active"{/if}><a href="{$.site.url}/download">Morfy</a></li>
                    <li {if Url::getUriSegment(0) == 'download' && Url::getUriSegment(1) == 'plugins'} class="active"{/if}><a href="{$.site.url}/download/plugins">Plugins</a></li>
					<li><a href="http://forum.morfy.org/categories/themes">Themes</a></li>
                </ul>
                {if Url::getUriSegment(1) == 'plugins'}
                    <a class="btn btn-add-plugin btn-black" href="https://github.com/morfy-cms/plugins/blob/master/plugins-list-en.md" target="_blank">Add a plugin</a>
                {/if}
	        </div>
	    </div>
	</div>
{/block}
