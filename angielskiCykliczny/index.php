<?php
include ("smarty/libs/Smarty.class.php");
require_once("Jezyk.php");
 $smarty = new Smarty();
$jezyk=new Jezyk();
$smarty->assign("dzisiejszeSlowka", $jezyk->dzisiejszeSlowka);
$smarty->display("index.html");
?>