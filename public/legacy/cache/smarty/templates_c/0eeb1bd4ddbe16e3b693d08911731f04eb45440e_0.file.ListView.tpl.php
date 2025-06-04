<?php
/* Smarty version 4.5.3, created on 2025-06-04 16:18:10
  from 'C:\Apache24\htdocs\basecrm\public\legacy\include\SugarFields\Fields\Base\ListView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_684071c2614742_98447221',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0eeb1bd4ddbe16e3b693d08911731f04eb45440e' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\basecrm\\public\\legacy\\include\\SugarFields\\Fields\\Base\\ListView.tpl',
      1 => 1746446799,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_684071c2614742_98447221 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\basecrm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_fetch.php','function'=>'smarty_function_sugar_fetch',),));
?>

<?php echo smarty_function_sugar_fetch(array('object'=>$_smarty_tpl->tpl_vars['parentFieldArray']->value,'key'=>$_smarty_tpl->tpl_vars['col']->value),$_smarty_tpl);?>

<?php }
}
