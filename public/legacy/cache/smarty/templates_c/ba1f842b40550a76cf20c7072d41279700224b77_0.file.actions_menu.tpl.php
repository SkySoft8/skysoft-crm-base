<?php
/* Smarty version 4.5.3, created on 2025-06-04 16:18:11
  from 'C:\Apache24\htdocs\basecrm\public\legacy\themes\suite8\include\MySugar\tpls\actions_menu.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_684071c3099ac4_44007789',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ba1f842b40550a76cf20c7072d41279700224b77' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\basecrm\\public\\legacy\\themes\\suite8\\include\\MySugar\\tpls\\actions_menu.tpl',
      1 => 1746446804,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_684071c3099ac4_44007789 (Smarty_Internal_Template $_smarty_tpl) {
?><ul class="dropdown-menu tab-actions">
    <?php if (!$_smarty_tpl->tpl_vars['lock_homepage']->value) {?>

        <li>
            <input class="button addDashlets" type="button" name="Edit"  data-toggle="modal" data-target=".modal-add-dashlet" value="<?php echo $_smarty_tpl->tpl_vars['lblAddDashlets']->value;?>
">
        </li>
        <li>
            <input class="button addDashboard" type="button" name="Edit"  data-toggle="modal" data-target=".modal-add-dashboard" value="<?php echo $_smarty_tpl->tpl_vars['lblAddTab']->value;?>
">
        </li>
        <li>
            <input class="button addDashboard" type="button" name="Edit"  data-toggle="modal" data-target=".modal-edit-dashboard" value="<?php echo $_smarty_tpl->tpl_vars['app']->value['LBL_EDIT_TAB'];?>
">
        </li>
    <?php }?>
</ul>
<?php }
}
