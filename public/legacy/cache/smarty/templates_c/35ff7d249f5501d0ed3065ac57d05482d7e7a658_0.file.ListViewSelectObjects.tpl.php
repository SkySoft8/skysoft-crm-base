<?php
/* Smarty version 4.5.3, created on 2025-06-04 16:04:41
  from 'C:\Apache24\htdocs\basecrm\public\legacy\themes\suite8\include\ListView\ListViewSelectObjects.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_68406e99d0e936_14468494',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '35ff7d249f5501d0ed3065ac57d05482d7e7a658' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\basecrm\\public\\legacy\\themes\\suite8\\include\\ListView\\ListViewSelectObjects.tpl',
      1 => 1746446804,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68406e99d0e936_14468494 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="selectedRecords label hidden"><?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_LISTVIEW_SELECTED_OBJECTS'];?>
</div><div class="selectedRecords value hidden"><?php echo $_smarty_tpl->tpl_vars['TOTAL_ITEMS_SELECTED']->value;?>
</div>
<input type='hidden' id='selectCountTop' name='selectCount[]' value='<?php echo $_smarty_tpl->tpl_vars['TOTAL_ITEMS_SELECTED']->value;?>
' />

<?php echo '<script'; ?>
>

    $(document).ready(function () {
        setInterval(function () {
            sListView.toggleSelected();
        }, 100);
    });

<?php echo '</script'; ?>
><?php }
}
