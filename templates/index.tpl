<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <meta name="description" content="EDK Killboard - {$config->get('cfg_kbtitle')}" />
  <meta name="keywords" content="EDK, killboard, {$config->get('cfg_kbtitle')}, {if $kb_owner}{$kb_owner}, {/if}Eve-Online, killmail" />
  <title>{$kb_title}</title>
  <link rel="stylesheet" type="text/css" href="{$theme_url}/{$style}.css" />
{$page_headerlines}
  <script type="text/javascript" src="{$kb_host}/themes/generic.js"></script>
</head>
<body {if isset($on_load)}{$on_load}{/if}>
  {$page_bodylines}
  <div id="popup"></div>
  <div id="stuff1"></div>
  <div id="stuff2"></div>
  <div id="stuff3"></div>
  <div id="stuff4"></div>
  {if $banner}
    <div id="header" class="wrapper">
    {if $bannerswf=='true'}
      <object type="application/x-shockwave-flash" data="{$kb_host}/banner/{$banner}" height="200" width="1000">
        <param name="movie" value="myFlashMovie.swf" />
    </object>
    {else}
      <a href="{if $banner_link}{$banner_link}{else}?a=home{/if}">
        <img src="{$kb_host}/banner/{$banner}" alt="Banner" {if $banner_x && $banner_y}width = "{$banner_x}" height="{$banner_y}"{/if} />
      </a>
    {/if}
    </div> <!-- /#header -->
  {/if}

  <div id="main-menu" class="wrapper">
    <table class="navigation">
      <tr>
        {section name=item loop=$menu}
          <td width="{$menu_w}">
            <a class="link" href="{$menu[item].link}">{$menu[item].text}</a>
          </td>
        {/section}
      </tr>
    </table>
  </div> <!-- /#navigation -->

  <div id="bodybox-wrapper" class="wrapper"><div class="section">
    {if isset($augmented_banner)}{$augmented_banner}{/if}
    {if isset($message)}
      <div id="boardmessage">{$message}</div>
    {/if}
    <div id="page-title">{$page_title}</div>
    <div id="content">{$content_html}</div>
    {if $context_html}
      <div id="context">
        {section name=item loop=$context_divs}
          <div class="context_element" id="context_{$smarty.section.item.index}">{$context_divs[item]}</div>
        {/section}
      </div><!-- /#context -->
    {/if}
    {if $profile}
      <div id="profile">{$profile_sql} queries{if $profile_sql_cached} (+{$profile_sql_cached} cached) {/if} SQL time {$sql_time}s, Total time {$profile_time}s</div>
    {/if}
    <div id="footer">
      <span class="smalltext">Created by <a href="http://gate.eveonline.com/profile/vecati">Vecati</a>, patched by <a href="https://gate.eveonline.com/Profile/Boris%20Blade%20Artrald">Boris Blade Artrald</a></span>
    </div>
  </div></div> <!-- /.section /#bodybox-wrapper -->
</body>
</html>
