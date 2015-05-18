<nav class="navbar navbar-default navbar-fixed-top" id="xo-toolbar">
    <div class="container-fluid">
        <!-- Default navbar -->
        <ul class="nav navbar-nav default-tools">
            <li class="menu-toggler">
                <a href="#" class="menu-toggle">
                    <span>Toggle</span>
                </a>
            </li>
            <li class="xo-logo">
                <a href="<{$xoops_admin_url}>" title="<{$xoops_sitename}>">
                    <img src="<{$hydrogen.url}>/images/logo-light.png" alt="<{$xoops_sitename}>">
                </a>
            </li>
        </ul>
        <!--// Default navbar -->

        <!-- Dynamic toolbar -->
        <ul class="nav navbar-nav navbar-right dynamic-tools">
            <li class="dropdown">
                <a href="#" title="<{$hydrogen.lang.system_module}>" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                    <span class="xicon-system"></span>
                </a>
                <ul class="dropdown-menu">
                    <{foreach item=menu from=$hydrogen.systemMenu}>
                    <li>
                        <a href="<{menulink menu=$menu module='system'}>">
                            <{xoicon icon="<{$menu.icon}>"}>
                            <{$menu.title}>
                        </a>
                    </li>
                    <{/foreach}>
                </ul>
            </li>
            <!-- Dynamic buttons -->
            <{foreach item=tool from=$main_toolbar_items}>
            <li <{if $tool.class || $tool.dropdown}>class="<{$tool.class}><{if $tool.dropdown}> dropdown<{/if}>"<{/if}>>
                <a href="<{$tool.link}>"<{if $tool.title}> title="<{$tool.title}>"<{/if}><{if $tool.dropdown}> class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"<{/if}>>
                    <span class="<{$tool.icon}>"></span>
                </a>
                <{if $tool.dropdown}>
                <{$tool.dd_content}>
                <{/if}>
            </li>
            <{/foreach}>
            <!--// Dynamic buttons -->

            <!-- Current admin button -->
            <li class="dropdown" id="xo-admin-button">
                <a href="#" title="<{$hydrogen.lang.hi_user|sprintf:$hydrogen.user.uname}>">
                    <img src="<{$hydrogen.user.avatar}>" alt="<{$hydrogen.user.uname}>">
                </a>
            </li>
            <!--// Current admin button -->

            <!-- Tasks toggle button -->
            <li id="xo-tasks-toggle">
                <a href="#">
                    <span>Toggle</span>
                </a>
            </li>
            <!--// Tasks toggle button -->
        </ul>
        <!--// Dynamic toolbar -->

    </div>
</nav>