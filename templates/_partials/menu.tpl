{hook h='displayNav'}
<div id="nav-wrapper">
    <div class="pull-left" id="pull-left-div">
        <i id="toggle-menu-theme-open" class="toggle-menu-theme material-icons d-inline">&#xE5D2;</i>
    </div>
    <div id="sidebar-wrapper">
        <div id="sidebar-content-wrapper">
            <div id="currency-language">{hook h='displayNav1'}</div>
            {hook h='displayNav2'}
            {hook h='displayFooter'}
            {*{hook h='displayFooterBefore'}*}
            {*<div class="row">
                <div class="col-md-11">
                    <a class="_blank" href="http://www.prestashop.com" target="_blank">
                        {l s='%copyright% %year% - Ecommerce software by %prestashop%' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme'}
                    </a>
                </div>
            </div>*}
        </div>
    </div>
</div>

<script>
    document.getElementById("toggle-menu-theme-open").onclick = toggleFunction;
    function toggleFunction(){
        document.getElementById("nav-wrapper").classList.toggle("toggled");
        var openclose = document.getElementById("toggle-menu-theme-open");
        openclose.innerHTML = document.getElementById("nav-wrapper").className == "toggled" ? "&#xE5CD;" : "&#xE5D2;";
    }
</script>