prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 77600
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>9948104087715249
,p_default_application_id=>77600
,p_default_id_offset=>34766150854088215
,p_default_owner=>'WKSP_DEV'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000002A5494441545847ED965F4853511CC7BFF7CCB5ED2E30E764E51F1036570FC2FA270BD3B4C49EF341A920C35844440FBE447FD6';
wwv_flow_imp.g_varchar2_table(2) := 'A2A298151844C4A8A428FA83D94B0F259122266686292121731A0DA6B165B3DA76D7DABD75EF1A44DBEEBC7BE9E59EB703DF73CEF7F7F99DFBBD871ADEBE91C3FF1B1C251B9009C8046402A2040881D6B40685758D28B0D640B5B20444A9148D2D36F603';
wwv_flow_imp.g_varchar2_table(3) := 'CC9C0FC191417C1E788E90670A60D94C6BC48368554B2B4A77DBA0D06872CACA78240CEF1D17E67BEE493440084A76B5A174CF01501485782482C5B15708CD4E836318513344AD066D34237F9D150AB51A1CC7C17BEB1A7C0F6F035C0A89F404944506AC';
wwv_flow_imp.g_varchar2_table(4) := 'BDD10D855A03361AC5FB1387F1EDDD5B4914F2D75BB1FA4CA7D0B29FE11026F6372316F0FFBB477A03267B07F4B5DB106722709F3B86E0EB21498727C505D5F5301D3D0B854A0D7F7F2F3C4E7B760344BB1C553D7D027AFE024DB6DBC046C5B167724734';
wwv_flow_imp.g_varchar2_table(5) := '342A2F77812E378263598C36D58365227FCB530968CA4DB0B8EE0B227FDF33783A4EE6547D725185E3220A37D70BD3715B3318EF876C068CB0B81E08A2407F2FA653B14932643E7509BAEABAA51B20B416558FFB132D987163B27D1FD82C373F630B681A';
wwv_flow_imp.g_varchar2_table(6) := '959DC916C431DAB4357B0BF8CD4CC7CF435FD78838C3C0EDB423383C20A9EAA45857DB00D391D320CB54F0BF780ACF0547F64BC82B94FA2258AE77238FD6828DC530E568C7E2D88824132B366D81D9EE4C7C86A1EF98B03523B610589A0150148A5B5A51';
wwv_flow_imp.g_varchar2_table(7) := 'D67628114451065FC7DF203CEB1672416C10D59F20B26C102AE783E8E3CD2B987B7417E0529E9FE2516CD8B113657B0F0A51CC1B9132F8838528EEBA8A4F4FBA254671524E11D0C60AE86A1A123F23433188324FD407DFB2E8BC0F5F4606B1F0B20FE119';
wwv_flow_imp.g_varchar2_table(8) := '77BACA937BC8AF6299804C40262010C8F86495927C39697F27F32FCF964B0F35C0102F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(51149504034566322)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
