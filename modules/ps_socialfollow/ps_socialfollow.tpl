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
<div class="row">
    <div class="col-md-12">
        {block name='block_social'}
            <h3 class="h3 hidden-sm-down">{l s='Nous suivre' d='Shop.Theme.SocialFollow'}</h3>
            <div class="title clearfix hidden-md-up" data-target="#block-social"
                 data-toggle="collapse">
                <i class="material-icons add">&#xE146;</i><span class="h3">{l s='Nous suivre' d='Shop.Theme.SocialFollow'}</span>
                <span class="pull-xs-right">
          <span class="navbar-toggler collapse-icons">
          </span>
        </span>
            </div>
            <div id="block-social" aria-expanded="true" class="collapse in">

                {assign var=i value=0}
                <div class="col-md-12">
                    {foreach from=$social_links item='social_link'}
                    {if $i == 4}
                </div>
                <div class="col-md-12">
                    {assign var=i value=0}
                    {/if}
                    <div class="{$social_link.class} social-link"><a href="{$social_link.url}" target="_blank">{$social_link.label}</a></div>
                    {assign var=i value=$i+1}
                    {/foreach}
                </div>
            </div>
        {/block}
    </div>
</div>
<br>