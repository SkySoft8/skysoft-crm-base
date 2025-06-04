<?php
/* Smarty version 4.5.3, created on 2025-06-04 16:05:15
  from 'C:\Apache24\htdocs\basecrm\public\legacy\modules\ModuleBuilder\tpls\assistantJavascript.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_68406ebb8904f4_84862528',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ca522ea5d28468b09fe0828e475fa99d27fc2783' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\basecrm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\assistantJavascript.tpl',
      1 => 1746446801,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68406ebb8904f4_84862528 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
>

if(typeof(Assistant)!="undefined" && Assistant.mbAssistant){
	//Assistant.mbAssistant.render(document.body);

<?php if ($_smarty_tpl->tpl_vars['userPref']->value) {?>
	Assistant.processUserPref("<?php echo $_smarty_tpl->tpl_vars['userPref']->value;?>
");
<?php }
if ($_smarty_tpl->tpl_vars['assistant']->value['key'] && $_smarty_tpl->tpl_vars['assistant']->value['group']) {?>
	Assistant.mbAssistant.setBody(SUGAR.language.get('ModuleBuilder','assistantHelp').<?php echo $_smarty_tpl->tpl_vars['assistant']->value['group'];?>
.<?php echo $_smarty_tpl->tpl_vars['assistant']->value['key'];?>
);
<?php }?>

	if(Assistant.mbAssistant.visible){
		Assistant.mbAssistant.show();
		}
}

<?php echo '</script'; ?>
><?php }
}
