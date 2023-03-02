prompt --application/shared_components/data_profiles/tables
begin
--   Manifest
--     DATA PROFILE: Tables
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>9948104087715249
,p_default_application_id=>1177600
,p_default_id_offset=>34766150854088215
,p_default_owner=>'WKSP_DEV'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(17093884903842)
,p_name=>'Tables'
,p_format=>'JSON'
,p_row_selector=>'links'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(17284378903847)
,p_data_profile_id=>wwv_flow_imp.id(17093884903842)
,p_name=>'REL'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'rel'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(17616087903848)
,p_data_profile_id=>wwv_flow_imp.id(17093884903842)
,p_name=>'HREF'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'href'
);
wwv_flow_imp.component_end;
end;
/
