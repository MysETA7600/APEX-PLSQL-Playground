prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'FETCH USING SELECT'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//let json_text=$("#TEXT_AREA_2").text();',
'//let arr=JSON.parse(json_text);',
'try {',
'let arr= JSON.parse($("#R1").text());',
'',
'let my_tab = arr.items;',
'console.log(my_tab);',
'let col = [];',
'for (let i = 0; i < my_tab.length; i++) {',
'  for (let key in my_tab[i]) {',
'    if (col.indexOf(key) === -1) {',
'      col.push(key);',
'    }',
'  }',
'}',
'//col.pop();',
'// Create table.',
'const table = document.createElement("table");',
'',
'// Create table header row using the extracted headers above.',
'let tr = table.insertRow(-1); // table row.',
'',
'for (let i = 0; i < col.length; i++) {',
'  let th = document.createElement("th"); // table header.',
'  th.innerHTML = col[i];',
'  tr.appendChild(th);',
'}',
'',
'// add json data to the table as rows.',
'for (let i = 0; i < my_tab.length; i++) {',
'  tr = table.insertRow(-1);',
'',
'  for (let j = 0; j < col.length; j++) {',
'    let tabCell = tr.insertCell(-1);',
'    tabCell.innerHTML = my_tab[i][col[j]];',
'  }',
'}',
'',
'// Now, add the newly created table with json data, to a container.',
'const divShowData = document.getElementsByClassName(''apex-item-group apex-item-group--textarea'')[1];',
'divShowData.innerHTML = "";',
'divShowData.appendChild(table);',
'divShowData.getElementsByTagName("table")[0].classList.add("table");',
'divShowData.getElementsByTagName("table")[0].classList.add("table-striped");',
'console.log(document.getElementById(''R2'').textContent)',
'console.log($("#R2").text())',
'}',
'catch(e){',
'    console.log(e);',
'}',
'let fetchRes = fetch(',
'  "https://g69a1aa845f64d7-mydb101.adb.ap-hyderabad-1.oraclecloudapps.com/ords/wksp_dev/table_dict"',
');',
'// fetchRes is the promise to resolve',
'// it by using.then() method',
'fetchRes',
'  .then((res) => res.json())',
'  .then((obj) => {',
'   let arr1 = obj.items;',
'console.log(arr1);',
'let arr_tab_list = [];',
'',
'for (let i in arr1) {',
'  arr_tab_list.push(arr1[i].table_name);',
'}',
'',
'console.log(arr_tab_list);',
'let nid = document.getElementsByClassName("a-TreeView-label")[2];',
'const node = document.createElement("ul");',
'console.log(nid.innerHTML);',
'for (let i in arr_tab_list) {',
'  node.innerHTML += `<li>${arr_tab_list[i]}</li>`;',
'}',
'nid.appendChild(node);',
'  });',
'  '))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'table, th, td ',
'        {',
'            border: solid 1px #ddd;',
'            border-collapse: collapse;',
'            padding: 2px 3px;',
'            text-align: center;',
'        }',
'        th { ',
'            font-weight:bold;',
'        }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'SAITAMA'
,p_last_upd_yyyymmddhh24miss=>'20230303035831'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16393024836478132)
,p_plug_name=>'<h3 style="color:white;">APEX PLAYGROUND<h3>'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--noPadding'
,p_plug_template=>wwv_flow_imp.id(16251278352478011)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BEFORE_NAVIGATION_BAR'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    ',
'div.t-Header-navBar {text-align: left;}',
'</style>'))
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2Kcp_aAsBhLobVnojlfORCkGzKt263Qyr5Q&usqp=CAU'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16410320712568050)
,p_button_sequence=>40
,p_button_name=>'Execute'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(16357252212478076)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute/Compile'
,p_icon_css_classes=>'fa-lg fa-play-circle-o'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>1
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18231851801675879)
,p_button_sequence=>50
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(16357252212478076)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-lg fa-eraser'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16410241823568049)
,p_name=>'CODE'
,p_item_sequence=>30
,p_prompt=>'Code'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>10
,p_colspan=>12
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(16354650434478074)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16531782232412311)
,p_name=>'R1'
,p_item_sequence=>80
,p_item_default=>'This is a Static Default Value'
,p_prompt=>'R1'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(16354650434478074)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16533407371412328)
,p_name=>'R2'
,p_item_sequence=>90
,p_item_default=>'This is a Static Default Value'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18231429957675874)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18231851801675879)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18231253166675873)
,p_event_id=>wwv_flow_imp.id(18231429957675874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const divShowData = document.getElementsByClassName(''apex-item-group apex-item-group--textarea'')[1];',
'divShowData.innerHTML = "";'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16531648989412310)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'PROC_SOURCE_CODE_INIT ;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error is there'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16410320712568050)
,p_process_success_message=>'its Done'
,p_process_is_stateful_y_n=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16533355482412327)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'New_2'
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'sahiltiwaridob2000@gmail.com'
,p_attribute_06=>'Mail'
,p_attribute_07=>'Mai mail mail'
,p_attribute_10=>'Y'
,p_process_error_message=>'Error is there'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16410320712568050)
,p_process_success_message=>'its Done'
,p_process_is_stateful_y_n=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16580721255736808)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Loading Schema'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'PROC_SOURCE_CODE_INIT;',
'ALL_TRIGGERS_LOG;',
'sf_function_codes;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16531839354412312)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ORDS_JSON'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- CASE 1  : CODE IS SELECT * FROM EMPLOYEES;',
'',
'DECLARE',
'V_CODE clob :=LOWER(TRIM(trailing '';'' from :CODE));',
'v_result clob:='' '';',
'v_count number;',
'BEGIN',
'IF V_CODE LIKE ''select%'' then',
'SELECT count(*) into v_count from APEX_REST_TAB where TO_CHAR(V_SOURCE)=TO_CHAR(v_code);',
'if v_count =0 then',
'IF V_CODE LIKE ''% join %'' THEN',
'--ENABLING REST FOR THE JOIN QUERIES ',
'BEGIN',
'ORDS.define_service( p_module_name  =>apex_module.nextval,     ',
'      p_base_path => ''join''||apex_join.nextval,',
'      p_items_per_page   =>25 ,',
'      P_PATTERN=>''/'',',
'      p_status   =>''PUBLISHED''    ,',
'      P_etag_type =>''HASH'',',
'      P_SOURCE =>v_CODE);',
'      COMMIT;',
'      EXCEPTION',
'      WHEN OTHERS THEN',
'      DBMS_OUTPUT.PUT_LINE(''CHECK YOUR CODE'');',
'      END;',
'BEGIN',
'v_result:=apex_web_service.make_rest_request(',
'    p_url=>''https://g69a1aa845f64d7-mydb101.adb.ap-hyderabad-1.oraclecloudapps.com/ords/wksp_dev/join''||apex_join.currval||''/'',',
'    p_http_method=>''GET''',
'    );',
'    end;',
'    INSERT INTO APEX_REST_TAB VALUES(apex_rest_id.nextval,user,V_CODE,v_result,''JOIN'');',
'    COMMIT;',
'ELSIF INSTR(V_CODE,''select'',1,2) <> 0 THEN',
'BEGIN',
'ORDS.define_service( p_module_name  =>apex_module.nextval,     ',
'      p_base_path => ''squery''||SQUERY.nextval,',
'      p_items_per_page   =>25 ,',
'      P_PATTERN=>''/'',',
'      p_status   =>''PUBLISHED''    ,',
'      P_etag_type =>''HASH'',',
'      P_SOURCE =>v_CODE);',
'      COMMIT;',
'      EXCEPTION',
'      WHEN OTHERS THEN',
'      DBMS_OUTPUT.PUT_LINE(''CHECK YOUR CODE'');',
'      END;',
'      BEGIN',
'v_result:=apex_web_service.make_rest_request(',
'    p_url=>''https://g69a1aa845f64d7-mydb101.adb.ap-hyderabad-1.oraclecloudapps.com/ords/wksp_dev/squery''||SQUERY.currval||''/'',',
'    p_http_method=>''GET''',
'    );',
'    end;',
'    INSERT INTO APEX_REST_TAB VALUES(apex_rest_id.nextval,user,V_CODE,v_result,''SQUERY'');',
'    COMMIT;',
'ELSE ',
'BEGIN',
'ORDS.define_service( p_module_name  =>apex_module.nextval,     ',
'      p_base_path => ''normal''||normal.nextval,',
'      p_items_per_page   =>25 ,',
'      P_PATTERN=>''/'',',
'      p_status   =>''PUBLISHED''    ,',
'      P_etag_type =>''HASH'',',
'      P_SOURCE =>v_CODE);',
'      COMMIT;',
'      EXCEPTION',
'      WHEN OTHERS THEN',
'      DBMS_OUTPUT.PUT_LINE(''CHECK YOUR CODE'');',
'      END;',
'      BEGIN',
'v_result:=apex_web_service.make_rest_request(',
'    p_url=>''https://g69a1aa845f64d7-mydb101.adb.ap-hyderabad-1.oraclecloudapps.com/ords/wksp_dev/normal''||normal.currval||''/'',',
'    p_http_method=>''GET''',
'    );',
'    end;',
'    INSERT INTO APEX_REST_TAB VALUES(apex_rest_id.nextval,user,V_CODE,v_result,''normal'');',
'    COMMIT;',
'END IF;',
'ELSE',
'SELECT V_URL INTO v_result FROM APEX_REST_TAB WHERE TO_CHAR(lower(V_SOURCE))=TO_CHAR(v_code);',
'END IF;',
'ELSE',
'DECLARE',
'texts DBMS_OUTPUT.CHARARR;',
'status NUMBER;',
'V_COUNT_TEXT NUMBER;',
'V_INDEX NUMBER:=0;',
'begin',
'execute immediate v_code||'';''; ',
'V_COUNT_TEXT:=TEXTS.COUNT;',
'WHILE (V_COUNT_TEXT <>0)',
'LOOP',
'V_COUNT_TEXT:=V_COUNT_TEXT-1;',
'V_result:=V_result||(TEXTS(V_INDEX+1));',
'V_RESULT:=''*'';',
'END LOOP;',
'v_result:=v_result||''PL/SQL procedure successfully completed.'';',
'EXCEPTION',
'when others then',
'v_result:=sqlerrm;',
'end;',
'END IF;',
':R1:=V_RESULT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16410320712568050)
);
wwv_flow_imp.component_end;
end;
/
