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
<div class="product-add-to-cart">
    {if !$configuration.is_catalog}
        <div class="wrap-quantity-variants">


            {block name='product_quantity'}
                <div class="product-quantity">
                    <span class="control-label">{l s='Quantity' d='Shop.Theme.Catalog'}</span>
                    <div class="qty">
                        <div class="input-group bootstrap-touchspin">
                            <span class="button-plus-minus" onclick="decrementValue()">
                                -
                            </span>
                            <input
                                    type="text"
                                    name="qty"
                                    id="item_quantity_wanted"
                                    value="{$product.quantity_wanted}"
                                    class="input-group"
                                    min="{$product.minimal_quantity}"
                            >
                            <span class="button-plus-minus"  onclick="incrementValue()">
                                +
                            </span>
                        </div>
                    </div>



                </div>
                <div class="clearfix"></div>
            {/block}

            {block name='product_minimal_quantity'}
                <p class="product-minimal-quantity">
                    {if $product.minimal_quantity > 1}
                        {l
                        s='The minimum purchase order quantity for the product is %quantity%.'
                        d='Shop.Theme.Checkout'
                        sprintf=['%quantity%' => $product.minimal_quantity]
                        }
                    {/if}
                </p>
            {/block}
            <div class="product-variants">
                {foreach from=$groups key=id_attribute_group item=group}
                    <div class="clearfix product-variants-item">
                        <span class="control-label">{$group.name}</span>
                        {if $group.group_type == 'select'}
                            <select
                                    id="group_{$id_attribute_group}"
                                    data-product-attribute="{$id_attribute_group}"
                                    name="group[{$id_attribute_group}]">
                                {foreach from=$group.attributes key=id_attribute item=group_attribute}
                                    <option value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} selected="selected"{/if}>{$group_attribute.name}</option>
                                {/foreach}
                            </select>
                        {elseif $group.group_type == 'color'}
                            <ul id="group_{$id_attribute_group}">
                                {foreach from=$group.attributes key=id_attribute item=group_attribute}
                                    <li class="pull-xs-left input-container">
                                        <input class="input-color" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}"{if $group_attribute.selected} checked="checked"{/if}>
                                        <span
                                                {if $group_attribute.html_color_code}class="color" style="background-color: {$group_attribute.html_color_code}" {/if}
                                                {if $group_attribute.texture}class="color texture" style="background-image: url({$group_attribute.texture})" {/if}
                                        ><span class="sr-only">{$group_attribute.name}</span></span>
                                    </li>
                                {/foreach}
                            </ul>
                        {elseif $group.group_type == 'radio'}
                            <ul id="group_{$id_attribute_group}">
                                {foreach from=$group.attributes key=id_attribute item=group_attribute}
                                    <li class="input-container pull-xs-left">
                                        <input class="input-radio" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}"{if $group_attribute.selected} checked="checked"{/if}>
                                        <span class="radio-label">{$group_attribute.name}</span>
                                    </li>
                                {/foreach}
                            </ul>
                        {/if}
                    </div>
                {/foreach}
            </div>
        </div>
    {/if}
    <hr>
    {if $product.show_price}
        <div class="product-prices">
            {block name='product_discount'}
                {if $product.has_discount}
                    <div class="product-discount">
                        {hook h='displayProductPriceBlock' product=$product type="old_price"}
                        <span class="regular-price">{$product.regular_price}</span>
                    </div>
                {/if}
            {/block}

            {block name='product_price'}
                <div
                        class="product-price h5 {if $product.has_discount}has-discount{/if}"
                        itemprop="offers"
                        itemscope
                        itemtype="https://schema.org/Offer"
                >
                    <link itemprop="availability" href="https://schema.org/InStock"/>
                    <meta itemprop="priceCurrency" content="{$currency.iso_code}">

                    <div class="current-price">
                        <span itemprop="price" content="{$product.price_amount}">{$product.price}</span>

                        {if $product.has_discount}
                            {if $product.discount_type === 'percentage'}
                                <span class="discount discount-percentage">{l s='Save %percentage%' d='Shop.Theme.Catalog' sprintf=['%percentage%' => $product.discount_percentage_absolute]}</span>
                            {else}
                                <span class="discount discount-amount">
                  {l s='Save %amount%' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.discount_to_display]}
              </span>
                            {/if}
                        {/if}
                    </div>

                    {block name='product_unit_price'}
                        {if $displayUnitPrice}
                            <p class="product-unit-price sub">{l s='(%unit_price%)' d='Shop.Theme.Catalog' sprintf=['%unit_price%' => $product.unit_price_full]}</p>
                        {/if}
                    {/block}
                </div>
            {/block}

            {block name='product_without_taxes'}
                {if $priceDisplay == 2}
                    <p class="product-without-taxes">{l s='%price% tax excl.' d='Shop.Theme.Catalog' sprintf=['%price%' => $product.price_tax_exc]}</p>
                {/if}
            {/block}

            {block name='product_pack_price'}
                {if $displayPackPrice}
                    <p class="product-pack-price">
                        <span>{l s='Instead of %price%' d='Shop.Theme.Catalog' sprintf=['%price%' => $noPackPrice]}</span>
                    </p>
                {/if}
            {/block}

            {block name='product_ecotax'}
                {if $product.ecotax.amount > 0}
                    <p class="price-ecotax">{l s='Including %amount% for ecotax' d='Shop.Theme.Catalog' sprintf=['%amount%' => $product.ecotax.value]}
                        {if $product.has_discount}
                            {l s='(not impacted by the discount)' d='Shop.Theme.Catalog'}
                        {/if}
                    </p>
                {/if}
            {/block}

            {hook h='displayProductPriceBlock' product=$product type="weight" hook_origin='product_sheet'}

            {if $configuration.display_taxes_label}
                {$product.labels.tax_long}
            {/if}
            {hook h='displayProductPriceBlock' product=$product type="price"}
            {hook h='displayProductPriceBlock' product=$product type="after_price"}
        </div>
        <div class="add">
            <button
                    class="btn btn-primary add-to-cart"
                    data-button-action="add-to-cart"
                    type="submit"
                    {if !$product.add_to_cart_url}
                        disabled
                    {/if}
            >
                {*<i class="material-icons shopping-cart">&#xE547;</i>*}
                {l s='Add to cart' d='Shop.Theme.Actions'}
            </button>


        </div>
    {/if}
</div>

<script>
    function incrementValue()
    {
        var value = parseInt(document.getElementById('item_quantity_wanted').value, 10);
        value = isNaN(value) ? 0 : value;
        value++;
        document.getElementById('item_quantity_wanted').value = value;
    }

    function decrementValue()
    {
        var value = parseInt(document.getElementById('item_quantity_wanted').value, 10);
        value = isNaN(value) ? 0 : value;
        value--;
        document.getElementById('item_quantity_wanted').value = value;
    }
</script>
