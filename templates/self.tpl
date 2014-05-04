<!-- self.tpl -->
<table id="owners" class='kb-table kb-table-rows'>
  <tbody>
    {section name=i loop=$alliances}
      <tr onclick="window.location.href='{$alliances[i].url}';">
        <td><img src="{$alliances[i].portrait}" alt="{$alliances[i].name}" /></td>
        <td class="owner-title owner-alliance">{$alliances[i].name}</td>
      </tr>
    {/section}
    {section name=i loop=$corps}
      <tr onclick="window.location.href='{$corps[i].url}';">
        <td><img src="{$corps[i].portrait}" alt="{$corps[i].name}" /></td>
        <td class="owner-title owner-corp">{$corps[i].name}</td>
      </tr>
    {/section}
    {section name=i loop=$pilots}
      <tr onclick="window.location.href='{$pilots[i].url}';">
        <td><img src="{$pilots[i].portrait}" alt="{$pilots[i].name}" /></td>
        <td class="owner-title owner-pilot">{$pilots[i].name}</td>
      </tr>
    {/section}
  </tbody>
</table>
<!-- /self.tpl -->
