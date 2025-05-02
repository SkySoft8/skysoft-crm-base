<?php
/* Smarty version 4.5.3, created on 2025-03-07 13:27:57
  from 'C:\Apache24\htdocs\crm\public\legacy\lib\Search\UI\templates\search.form.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67caf45da5cdf1_21088262',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f3de8cefb222127251a01ac98dcba2177bd2878d' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\lib\\Search\\UI\\templates\\search.form.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67caf45da5cdf1_21088262 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.search_controller.php','function'=>'smarty_function_search_controller',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\modifier.count.php','function'=>'smarty_modifier_count',),));
?>

<div class="moduleTitle">
    <h2 class="module-title-text"><?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SEARCH_TITLE'];?>
</h2>
</div>
<div style="clear:both;">
    <form id="search-wrapper-form">
                <?php echo smarty_function_search_controller(array(),$_smarty_tpl);?>

        <input type="hidden" class="form-control" name="module" value="Home">
        <input type="hidden" class="form-control" name="search_form" value="false">
        <input type="hidden" class="form-control" name="advanced" value="false">

        <table>
            <tbody>
            <tr style="padding-bottom: 10px">
                <td class="submitButtons" colspan="8" nowrap="">
                    <label for="searchFieldMain" class="text-muted hide"><?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SEARCH_QUERY'];?>
</label>
                    <input id="searchFieldMain" title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SEARCH_TEXT_FIELD_TITLE_ATTR'];?>
" class="searchField"
                           type="text" size="80" name="search-query-string" value="<?php echo $_smarty_tpl->tpl_vars['searchQueryString']->value;?>
" autofocus>
                    <input type="submit" onclick="searchForm.onSubmitClick(this);"
                           title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SEARCH_SUBMIT_FIELD_TITLE_ATTR'];?>
" class="button primary"
                           value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SEARCH_SUBMIT_FIELD_VALUE'];?>
">&nbsp;
                </td>
            <tr>
            <tr style="padding-top: 10px;">
                <td colspan="6" style="padding-left: 20px;" nowrap="">
                    <div id="inlineGlobalSearch">
                        <table style="margin-bottom:0;">
                            <tbody>
                            <label for="search-query-size"
                                   class="text-muted"><?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SEARCH_RESULTS_PER_PAGE'];?>
</label>
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['sizeOptions']->value,'selected'=>$_smarty_tpl->tpl_vars['searchQuerySize']->value,'id'=>"search-query-size",'name'=>"search-query-size"),$_smarty_tpl);?>

                            &nbsp;&nbsp;
                            <input type="hidden" name="search-query-from" value="<?php echo $_smarty_tpl->tpl_vars['searchQueryFrom']->value;?>
">

                            <?php if (smarty_modifier_count($_smarty_tpl->tpl_vars['engineOptions']->value) > 1) {?>
                                <label for="search-query-size" class="text-muted"><?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SEARCH_ENGINE'];?>
</label>
                                <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['engineOptions']->value,'selected'=>$_smarty_tpl->tpl_vars['searchQueryEngine']->value,'id'=>"search-engine",'name'=>"search-engine"),$_smarty_tpl);?>

                            <?php } else { ?>
                                <?php $_smarty_tpl->_assignInScope('firstRow', key($_smarty_tpl->tpl_vars['engineOptions']->value));?>
                                <input type="hidden" name="search-engine" value="<?php echo $_smarty_tpl->tpl_vars['firstRow']->value;?>
" />
                            <?php }?>
                            </tbody>
                        </table>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
    <?php echo '<script'; ?>
>
        
        var searchForm = {
          onSubmitClick: function (e) {
            // jump to the first page on new results list
            $('input[name="search-query-from"]').val(0);
            return true;
          }
        };
        
    <?php echo '</script'; ?>
>
</div>
<?php }
}
