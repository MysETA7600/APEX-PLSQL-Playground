prompt --application/shared_components/web_sources/emp
begin
--   Manifest
--     WEB SOURCE: Emp
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>9948104087715249
,p_default_application_id=>77600
,p_default_id_offset=>34766150854088215
,p_default_owner=>'WKSP_DEV'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(51170841750620616)
,p_name=>'Emp'
,p_static_id=>'Emp'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(51168209649620601)
,p_remote_server_id=>wwv_flow_imp.id(16401893748532381)
,p_url_path_prefix=>'/hr/emp/'
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(51171017091620626)
,p_web_src_module_id=>wwv_flow_imp.id(51170841750620616)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
