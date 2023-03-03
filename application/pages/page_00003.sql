prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>9948104087715249
,p_default_application_id=>1177600
,p_default_id_offset=>34766150854088215
,p_default_owner=>'WKSP_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'all_tabs'
,p_alias=>'ALL-TABS'
,p_page_mode=>'MODAL'
,p_step_title=>'all_tabs'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'SAITAMA'
,p_last_upd_yyyymmddhh24miss=>'20230226114924'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17371095048995537)
,p_plug_name=>'all_tabs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(16274456640478023)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'SELECT TABLE_NAME FROM USER_TABLES;'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'all_tabs'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(17370987351995537)
,p_name=>'all_tabs'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SAITAMA'
,p_internal_uid=>17395163502092678
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17370597571995519)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17369163103979377)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'173970'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TABLE_NAME'
);
wwv_flow_imp.component_end;
end;
/
