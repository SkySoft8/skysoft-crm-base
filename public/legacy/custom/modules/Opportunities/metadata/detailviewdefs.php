<?php
$viewdefs ['Opportunities'] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
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
        'DEFAULT' => 
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
    'topWidget' => 
    array (
      'type' => 'statistics',
      'options' => 
      array (
        'statistics' => 
        array (
          0 => 
          array (
            'labelKey' => 'LBL_DAYS_IN_SALE_STAGE',
            'type' => 'opportunity-sales-stage-time-span',
            'endLabelKey' => 'LBL_STAT_DAYS',
            'hideValueIfEmpty' => true,
          ),
        ),
      ),
      'acls' => 
      array (
        'Opportunities' => 
        array (
          0 => 'view',
          1 => 'list',
        ),
      ),
    ),
    'sidebarWidgets' => 
    array (
      0 => 
      array (
        'type' => 'statistics',
        'labelKey' => 'LBL_SIZE_ANALYSIS',
        'options' => 
        array (
          'sidebarStatistic' => 
          array (
            'rows' => 
            array (
              0 => 
              array (
                'align' => 'start',
                'cols' => 
                array (
                  0 => 
                  array (
                    'labelKey' => 'LBL_POSITION',
                    'size' => 'medium',
                  ),
                ),
              ),
              1 => 
              array (
                'align' => 'start',
                'cols' => 
                array (
                  0 => 
                  array (
                    'statistic' => 'opportunity-size-analysis',
                    'size' => 'xx-large',
                    'bold' => true,
                    'color' => 'green',
                  ),
                ),
              ),
              2 => 
              array (
                'align' => 'start',
                'cols' => 
                array (
                  0 => 
                  array (
                    'labelKey' => 'LBL_OUT_OF',
                    'class' => 'pl-1 pr-1',
                    'size' => 'regular',
                  ),
                  1 => 
                  array (
                    'statistic' => 'assigned-user-opportunities-count',
                    'class' => 'pl-1 pr-1',
                    'size' => 'regular',
                  ),
                ),
              ),
            ),
          ),
        ),
        'acls' => 
        array (
          'Accounts' => 
          array (
            0 => 'view',
            1 => 'list',
          ),
        ),
      ),
      1 => 
      array (
        'type' => 'history-timeline',
        'acls' => 
        array (
          'Opportunities' => 
          array (
            0 => 'view',
            1 => 'list',
          ),
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 'account_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'currency_id',
            'comment' => 'Currency used for display purposes',
            'label' => 'LBL_CURRENCY',
          ),
          1 => 'date_closed',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'amount',
          ),
          1 => 'sales_stage',
        ),
        3 => 
        array (
          0 => 'lead_source',
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'nl2br' => true,
          ),
        ),
        5 => 
        array (
          0 => '',
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
