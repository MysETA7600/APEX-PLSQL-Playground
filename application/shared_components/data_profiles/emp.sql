prompt --application/shared_components/data_profiles/emp
begin
--   Manifest
--     DATA PROFILE: Emp
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
 p_id=>wwv_flow_imp.id(16402058795532386)
,p_name=>'Emp'
,p_format=>'JSON'
,p_row_selector=>'items'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16402212951532395)
,p_data_profile_id=>wwv_flow_imp.id(16402058795532386)
,p_name=>'JOB'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'job'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16402562687532397)
,p_data_profile_id=>wwv_flow_imp.id(16402058795532386)
,p_name=>'MGR'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'mgr'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16402813894532397)
,p_data_profile_id=>wwv_flow_imp.id(16402058795532386)
,p_name=>'SAL'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'sal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16403172511532397)
,p_data_profile_id=>wwv_flow_imp.id(16402058795532386)
,p_name=>'COMM'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'comm'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16403448133532397)
,p_data_profile_id=>wwv_flow_imp.id(16402058795532386)
,p_name=>'EMPNO'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'empno'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16403766517532397)
,p_data_profile_id=>wwv_flow_imp.id(16402058795532386)
,p_name=>'ENAME'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'ename'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16404062068532398)
,p_data_profile_id=>wwv_flow_imp.id(16402058795532386)
,p_name=>'DEPTNO'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'deptno'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16404327846532398)
,p_data_profile_id=>wwv_flow_imp.id(16402058795532386)
,p_name=>'HIREDATE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'hiredate'
);
wwv_flow_imp.component_end;
end;
/