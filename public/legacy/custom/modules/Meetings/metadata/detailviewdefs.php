<?php
$viewdefs ['Meetings'] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'includes' => 
      array (
        0 => 
        array (
          'file' => 'modules/Reminders/Reminders.js',
        ),
      ),
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 
          array (
            'customCode' => '{if $fields.status.value != "Held" && $bean->aclAccess("edit")} <input type="hidden" name="isSaveAndNew" value="false">  <input type="hidden" name="status" value="">  <input type="hidden" name="isSaveFromDetailView" value="true">  <input title="{$APP.LBL_CLOSE_AND_CREATE_BUTTON_TITLE}"   class="button"  onclick="this.form.status.value=\'Held\'; this.form.action.value=\'Save\';this.form.return_module.value=\'Meetings\';this.form.isDuplicate.value=true;this.form.isSaveAndNew.value=true;this.form.return_action.value=\'EditView\'; this.form.isDuplicate.value=true;this.form.return_id.value=\'{$fields.id.value}\';" id="close_create_button" name="button"  value="{$APP.LBL_CLOSE_AND_CREATE_BUTTON_TITLE}"  type="submit">{/if}',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$APP.LBL_CLOSE_AND_CREATE_BUTTON_TITLE}',
              'htmlOptions' => 
              array (
                'title' => '{$APP.LBL_CLOSE_AND_CREATE_BUTTON_TITLE}',
                'name' => '{$APP.LBL_CLOSE_AND_CREATE_BUTTON_TITLE}',
                'class' => 'button',
                'id' => 'close_create_button',
                'onclick' => 'this.form.isSaveFromDetailView.value=true; this.form.status.value=\'Held\'; this.form.action.value=\'Save\';this.form.return_module.value=\'Meetings\';this.form.isDuplicate.value=true;this.form.isSaveAndNew.value=true;this.form.return_action.value=\'EditView\'; this.form.isDuplicate.value=true;this.form.return_id.value=\'{$fields.id.value}\';',
              ),
              'template' => '{if $fields.status.value != "Held" && $bean->aclAccess("edit")}[CONTENT]{/if}',
            ),
          ),
          4 => 
          array (
            'customCode' => '{if $fields.status.value != "Held" && $bean->aclAccess("edit")} <input type="hidden" name="isSave" value="false">  <input title="{$APP.LBL_CLOSE_BUTTON_TITLE}"  accesskey="{$APP.LBL_CLOSE_BUTTON_KEY}"  class="button"  onclick="this.form.status.value=\'Held\'; this.form.action.value=\'Save\';this.form.return_module.value=\'Meetings\';this.form.isSave.value=true;this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$fields.id.value}\'"  id="close_button" name="button1"  value="{$APP.LBL_CLOSE_BUTTON_TITLE}"  type="submit">{/if}',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$APP.LBL_CLOSE_BUTTON_TITLE}',
              'htmlOptions' => 
              array (
                'title' => '{$APP.LBL_CLOSE_BUTTON_TITLE}',
                'accesskey' => '{$APP.LBL_CLOSE_BUTTON_KEY}',
                'class' => 'button',
                'onclick' => 'this.form.status.value=\'Held\'; this.form.action.value=\'Save\';this.form.return_module.value=\'Meetings\';this.form.isSave.value=true;this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$fields.id.value}\';',
                'name' => '{$APP.LBL_CLOSE_BUTTON_TITLE}',
                'id' => 'close_button',
              ),
              'template' => '{if $fields.status.value != "Held" && $bean->aclAccess("edit")}[CONTENT]{/if}',
            ),
          ),
        ),
        'hidden' => 
        array (
          0 => '<input type="hidden" name="isSaveAndNew">',
          1 => '<input type="hidden" name="status">',
          2 => '<input type="hidden" name="isSaveFromDetailView">',
          3 => '<input type="hidden" name="isSave">',
        ),
        'headerTpl' => 'modules/Meetings/tpls/detailHeader.tpl',
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_MEETING_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_PANEL_ASSIGNMENT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'lbl_meeting_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_SUBJECT',
          ),
          1 => 'status',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'date_end',
            'comment' => 'Date meeting ends',
            'label' => 'LBL_DATE_END',
          ),
          1 => '',
        ),
        2 => 
        array (
          0 => 'description',
        ),
      ),
      'LBL_PANEL_ASSIGNMENT' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO',
          ),
        ),
      ),
    ),
  ),
);
;
?>
