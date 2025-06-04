<?php
/* Smarty version 4.5.3, created on 2025-06-04 16:05:23
  from 'C:\Apache24\htdocs\basecrm\public\legacy\modules\Emails\templates\displayIndicatorField.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_68406ec3d90d05_48836177',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a708d92f4641ba715b248e8cd4b288e7a1b6f7f4' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\basecrm\\public\\legacy\\modules\\Emails\\templates\\displayIndicatorField.tpl',
      1 => 1746446801,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68406ec3d90d05_48836177 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="email-indicator">
    <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value)) {?>
        <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value['status']) && $_smarty_tpl->tpl_vars['bean']->value['status'] == 'unread') {?>
            <div class="email-new"></div>
        <?php }?>
        <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value['is_imported']) && !empty($_smarty_tpl->tpl_vars['bean']->value['inbound_email_record']) && $_smarty_tpl->tpl_vars['bean']->value['is_imported'] == true && $_smarty_tpl->tpl_vars['bean']->value['inbound_email_record'] == $_REQUEST['inbound_email_record']) {?>
            <div class="email-imported"><span class="glyphicon glyphicon-ok"></span></div>
        <?php }?>
        <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value['flagged']) && $_smarty_tpl->tpl_vars['bean']->value['flagged'] == 1) {?>
            <span class="email-flagged">!</span>
        <?php }?>
    <?php }?>
</div>
<?php }
}
