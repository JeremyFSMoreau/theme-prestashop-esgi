{extends file='_partials/header.tpl'}
{block name='header_banner'}
    <div class="header-banner">
        {hook h='displayBanner'}
    </div>
    <div class="panel_homeLogoCategory">

        <a href="{$urls.base_url}">
            <div id="logo-background-category"></div>
            <div id="logo-container-category"><img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}"></div>
        </a>
    </div>
{/block}