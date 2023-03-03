prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 77600
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>9948104087715249
,p_default_application_id=>1177600
,p_default_id_offset=>34766150854088215
,p_default_owner=>'WKSP_DEV'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(16385557511478114)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
