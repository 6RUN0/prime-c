<?php
/**
 * $Date$
 * $Revision$
 * $HeadURL$
 *
 * @package EDK
 */

$themeInfo = array(
  'name' => 'Prime (Caldari Version)',
  'info'=> 'By Vecati',
);

class PrimeC
{
  public static function AddHeader(&$page)
  {
    if (file_exists(__DIR__ . '/favicon.ico')) {
      $page->addHeader('<link rel="icon" type="image/vnd.microsoft.icon" href="' . THEME_URL . '/favicon.ico' . '" />');
    }
  }
}

event::register('page_assembleheader', 'PrimeC::AddHeader');
