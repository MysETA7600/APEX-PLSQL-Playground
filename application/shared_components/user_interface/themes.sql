prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 77600
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>9948104087715249
,p_default_application_id=>1177600
,p_default_id_offset=>34766150854088215
,p_default_owner=>'WKSP_DEV'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(16360134339478079)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(16208124983477982)
,p_default_dialog_template=>wwv_flow_imp.id(16202914289477979)
,p_error_template=>wwv_flow_imp.id(16192927584477969)
,p_printer_friendly_template=>wwv_flow_imp.id(16208124983477982)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(16192927584477969)
,p_default_button_template=>wwv_flow_imp.id(16357115253478076)
,p_default_region_template=>wwv_flow_imp.id(16284230064478031)
,p_default_chart_template=>wwv_flow_imp.id(16284230064478031)
,p_default_form_template=>wwv_flow_imp.id(16284230064478031)
,p_default_reportr_template=>wwv_flow_imp.id(16284230064478031)
,p_default_tabform_template=>wwv_flow_imp.id(16284230064478031)
,p_default_wizard_template=>wwv_flow_imp.id(16284230064478031)
,p_default_menur_template=>wwv_flow_imp.id(16296625709478038)
,p_default_listr_template=>wwv_flow_imp.id(16284230064478031)
,p_default_irr_template=>wwv_flow_imp.id(16274456640478023)
,p_default_report_template=>wwv_flow_imp.id(16322180780478053)
,p_default_label_template=>wwv_flow_imp.id(16354650434478074)
,p_default_menu_template=>wwv_flow_imp.id(16358799219478076)
,p_default_calendar_template=>wwv_flow_imp.id(16358803316478077)
,p_default_list_template=>wwv_flow_imp.id(16338572533478063)
,p_default_nav_list_template=>wwv_flow_imp.id(16350395012478071)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(16350395012478071)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(16344939770478068)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(16221098176477996)
,p_default_dialogr_template=>wwv_flow_imp.id(16218221168477992)
,p_default_option_label=>wwv_flow_imp.id(16354650434478074)
,p_default_required_label=>wwv_flow_imp.id(16355922816478075)
,p_default_navbar_list_template=>wwv_flow_imp.id(16344588074478067)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
