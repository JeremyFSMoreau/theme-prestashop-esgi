{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file=$layout}

{if $page.page_name=='category'}
    {block name='header'}
        {include file='_partials/header-category.tpl'}
    {/block}
{/if}
{block name='notifications'}
{/block}
{block name='breadcrumb'}
{/block}

{block name="footer"}
{/block}

{block name="left_column"}
{/block}

{block name="right_column"}
    <div id="right-column-category">
        {if $page.page_name == 'product'}
            {hook h='displayRightColumnProduct'}
        {else}
            {hook h="displayRightColumn"}
        {/if}
    </div>
{/block}

{block name="right_column"}
{/block}

{block name="content_wrapper"}
    <div id="content-wrapper">
    {block name='content'}
      <section id="main">

        {block name='product_list_header'}
          <h2 class="h2">{$listing.label}</h2>
        {/block}

        <section id="products">
          {if $listing.products|count}

            <div id="">
              {block name='product_list_top'}
                {include file='catalog/_partials/products-top.tpl' listing=$listing}
              {/block}
            </div>

            {if $page.page_name=='category'}
            <div id="">
              {block name='product_list'}
                {include file='catalog/_partials/products-category.tpl' listing=$listing}
              {/block}
            </div>
            {/if}

            <div id="js-product-list-bottom">
              {block name='product_list_bottom'}
                {include file='catalog/_partials/products-bottom.tpl' listing=$listing}
              {/block}
            </div>

          {else}

            {include file='errors/not-found.tpl'}

          {/if}
        </section>

      </section>
    {/block}
    </div>
    {if $page.page_name=='category'}
    <style>
        .panel_homeLogoCategory{
            background-image: url('{$category.image.large.url}');
        }
    </style>
    {/if}
{/block}