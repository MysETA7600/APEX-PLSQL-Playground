prompt --application/shared_components/user_interface/lovs/tables
begin
--   Manifest
--     TABLES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>9948104087715249
,p_default_application_id=>1177600
,p_default_id_offset=>34766150854088215
,p_default_owner=>'WKSP_DEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11738923356718)
,p_lov_name=>'TABLES'
,p_lov_query=>'SELECT TABLE_NAME FROM USER_TABLES;'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'TABLE_NAME'
,p_display_column_name=>'TABLE_NAME'
,p_default_sort_column_name=>'TABLE_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
