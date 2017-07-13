<div class="row">
    <div class="col-md-12 links">
                {foreach $linkBlocks as $linkBlock}
                    <div class="wrapper">
                        <h3 class="h3 hidden-sm-down">{$linkBlock.title}</h3>
                        {assign var=_expand_id value=10|mt_rand:100000}
                        <div class="title clearfix hidden-md-up" data-target="#footer_sub_menu_{$_expand_id}"
                             data-toggle="collapse">
                            <i class="material-icons add">&#xE146;</i><span class="h3">{$linkBlock.title}</span>
                            <span class="pull-xs-right">
                              <span class="navbar-toggler collapse-icons">

                              </span>
                            </span>
                        </div>
                        <ul id="footer_sub_menu_{$_expand_id}" aria-expanded="true" class="collapse in">
                            {foreach $linkBlock.links as $link}
                                <li>
                                    <a
                                            id="{$link.id}-{$linkBlock.id}"
                                            class="{$link.class}"
                                            href="{$link.url}"
                                            title="{$link.description}">
                                        {$link.title}
                                    </a>
                                </li>
                            {/foreach}
                        </ul>
                    </div><br>
                {/foreach}
    </div>
</div>
