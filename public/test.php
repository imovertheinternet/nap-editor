<?php
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ob_start();
var_dump($_REQUEST);
$image_data = file_get_contents($_REQUEST['url']);
file_put_contents("photo.jpg",$image_data);
$msg = ob_get_contents();
mail('You@Your.org', 'PostURL Data', $msg);
ob_end_clean();
?>
