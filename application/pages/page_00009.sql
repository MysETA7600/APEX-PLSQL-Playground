prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.2'
,p_default_workspace_id=>9948104087715249
,p_default_application_id=>77600
,p_default_id_offset=>34766150854088215
,p_default_owner=>'WKSP_DEV'
);
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'all_Functions'
,p_alias=>'ALL-FUNCTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'all_Functions'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' function fetchdata(x) {',
'    x = x.trim();',
'    console.log(x);',
'    let fetchRes = fetch(',
'      "https://g69a1aa845f64d7-mydb101.adb.ap-hyderabad-1.oraclecloudapps.com/ords/wksp_dev/user_function_source/" +',
'        x',
'    );',
'    fetchRes',
'      .then((res) => res.json())',
'      .then((obj) => {',
'        console.log(obj);',
'        console.log(obj.fun_code);',
'        let mdl=document.getElementsByClassName("t-Dialog-body")[0];',
'        mdl.innerHTML=`',
'        <p id=''sarkar''>${obj.fun_code}<p>',
'        <button type=''button'' onclick=''list_gen()''>Back</button>',
'        <button onclick="myFunction()">Copy text</button>',
'        `',
'      });',
'  }',
'  function list_gen(){let main_url=fetch("https://g69a1aa845f64d7-mydb101.adb.ap-hyderabad-1.oraclecloudapps.com/ords/wksp_dev/user_function_source/");',
'main_url.then((response)=>response.json()).then((obj)=>{',
'    let arr = obj.items;',
'console.log(arr);',
'let arr_tab_list = [];',
'',
'for (let i in arr) {',
'  arr_tab_list.push(arr[i].fun_name);',
'}',
'',
'console.log(arr_tab_list);',
'let nid = document.getElementsByClassName("t-Dialog-body")[0];',
'console.log(1);',
'nid.innerHTML = "<ul> ";',
'for (let i in arr_tab_list) {',
'  nid.innerHTML += `',
'  <a onclick="fetchdata(''${arr_tab_list[i]}'')"><li>${arr_tab_list[i]}</li></a>',
'',
'  `;',
'}',
'nid.innerHTML += "</ul>";',
'',
'})',
'}',
'',
'function myFunction() {',
'  // Get the text field',
'  var copyText = document.getElementById("sarkar").innerHTML;',
'',
'  // Select the text field',
' navigator.clipboard.writeText(copyText);',
'',
'  // Alert the copied text',
'  //alert("Copied the text: " + copyText.value);',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function list_gen(){let main_url=fetch("https://g69a1aa845f64d7-mydb101.adb.ap-hyderabad-1.oraclecloudapps.com/ords/wksp_dev/user_function_source");',
'main_url.then((response)=>response.json()).then((obj)=>{',
'    let arr = obj.items;',
'console.log(arr);',
'let arr_tab_list = [];',
'',
'for (let i in arr) {',
'  arr_tab_list.push(arr[i].fun_name);',
'}',
'',
'console.log(arr_tab_list);',
'let nid = document.getElementsByClassName(''t-Dialog-body'')[0];',
'console.log(1);',
'nid.innerHTML = "<ul> ";',
'for (let i in arr_tab_list) {',
'  nid.innerHTML += `',
'  <a onclick="fetchdata(''${arr_tab_list[i]}'')"><li>${arr_tab_list[i]}</li></a>',
'',
'  `;',
'}',
'nid.innerHTML += "</ul>";',
'',
'})',
'}',
'list_gen();'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'SAITAMA'
,p_last_upd_yyyymmddhh24miss=>'20230303035305'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(17409835912639820)
,p_name=>'all_Functions'
,p_template=>wwv_flow_imp.id(51050380918566246)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select OBJECT_NAME from user_PROCEDURES WHERE OBJECT_TYPE=''FUNCTION'''
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(51088331634566268)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(17410220900639820)
,p_query_column_id=>1
,p_column_alias=>'OBJECT_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Object Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
