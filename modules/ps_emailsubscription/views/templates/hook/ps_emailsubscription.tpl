{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<br><br>
<div class="row">
    <div class="col-md-12">
        <div class="block_newsletter hidden-sm-down">
            <p>{l s='Get our latest news and special sales' d='Shop.Theme'}</p>
                <form action="{$urls.pages.index}#footer" method="post">
                    <div>
                        <div class="input-wrapper">
                            <input
                                    name="email"
                                    type="text"
                                    value="{$value}"
                                    placeholder="{l s='Your email address' d='Shop.Forms.Labels'}"
                            >
                            <button type="submit" name="submitNewsletter"><i class="material-icons">email</i></button>
                        </div>

                        <input type="hidden" name="action" value="0">
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-12">
                        {if $conditions}
                            <p>{$conditions}</p>
                        {/if}
                        {if $msg}
                            <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
                                {$msg}
                            </p>
                        {/if}
                    </div>
                </form>
        </div>
    </div>
</div>
