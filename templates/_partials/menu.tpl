<div id="nav-wrapper">
    <div class="pull-left" id="pull-left-div">
        <i id="toggle-menu-theme" class="material-icons d-inline">&#xE5D2;</i>
    </div>
    <div id="sidebar-wrapper">
        <div class="row">
            <div class="col-md-11">
                {hook h='displayNav1'}
            </div>
        </div>
        {hook h='displayNav2'}
        {hook h='displayFooter'}
        {*{hook h='displayFooterBefore'}*}
        <div class="row">
            <div class="col-md-11">
                <a class="_blank" href="http://www.prestashop.com" target="_blank">
                    {l s='%copyright% %year% - Ecommerce software by %prestashop%' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme'}
                </a>
            </div>
        </div>
    </div>
</div>

<script>
    document.getElementById("toggle-menu-theme").onclick = toggleFunction;
    function toggleFunction(){
        document.getElementById("nav-wrapper").classList.toggle("toggled");
    }
</script>