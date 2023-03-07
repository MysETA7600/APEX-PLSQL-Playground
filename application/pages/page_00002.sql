prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Sign Up'
,p_alias=>'SIGNUP'
,p_step_title=>'Sign Up'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function showPwd(){',
'    let nid=document.getElementById("P_SHOW");',
'    nid.onclick=()=>{',
'        let pswd=document.getElementById("P_PASSWORD");',
'        if(pswd.type=="password"){',
'            pswd.type="text";',
'        }',
'        else{',
'            pswd.type="password";',
'        }',
'        console.log(pswd);',
'    }',
'    ',
'}'))
,p_javascript_code_onload=>'showPwd();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Login-container{',
'',
'     background-image: url("https://cdn.pixabay.com/photo/2023/02/14/22/12/birds-7790506_1280.jpg");',
'    ',
'}',
''))
,p_step_template=>wwv_flow_imp.id(50959078438566184)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'SAITAMA'
,p_last_upd_yyyymmddhh24miss=>'20230305125207'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18185863988351411)
,p_plug_name=>'&emsp;<img src="https://pbs.twimg.com/profile_images/1534632761381687296/RU45pnBe_400x400.png" width="100" height="100"><br><h1 >Sign Up</h1>'
,p_region_name=>'rgn-singup'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(51050380918566246)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18186482027351417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18185863988351411)
,p_button_name=>'P_LOGIN'
,p_button_static_id=>'btn-signin'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(51123266107566291)
,p_button_image_alt=>'Sign in Instead'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18186326047351416)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18185863988351411)
,p_button_name=>'P_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(51123403066566291)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign Up'
,p_button_position=>'CLOSE'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18185570139351408)
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18185995935351412)
,p_name=>'P_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18185863988351411)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(51120801288566289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18186072468351413)
,p_name=>'P_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18185863988351411)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(51120801288566289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18186163317351414)
,p_name=>'P_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18185863988351411)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(51120801288566289)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'NO_SPECIAL_CHAR'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18186256226351415)
,p_name=>'P_CNF_PWD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18185863988351411)
,p_prompt=>'Confirm Your Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(51120801288566289)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'NO_SPECIAL_CHAR'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18186538536351418)
,p_name=>'P_SHOW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18185863988351411)
,p_prompt=>'Show Password'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(51120801288566289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18185621470351409)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'DELETE FROM APEX_DB_USERS;',
'INSERT INTO APEX_DB_USERS VALUES(:P_NAME,replace(:P_EMAIL,''.'',''_''),:P_PASSWORD,CURRENT_DATE);',
'COMMIT;',
'DECLARE',
'V_COUNT PLS_INTEGER;',
'BEGIN',
'SELECT COUNT(*) INTO V_COUNT FROM ALL_USERS WHERE USERNAME=upper(replace(:P_EMAIL,''.'',''_''));',
'IF V_COUNT =0 THEN',
'CREATE_USER;',
'GRANT_PRIV;',
'APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE:=''Account Has been Created Successfully'';',
'ELSE',
'APEX_APPLICATION.g_error_message_override:=''User with this Email Id already exists'';',
'end if;',
'END;',
'exception',
'when others then',
'APEX_APPLICATION.g_error_message_override:=sqlerrm||'' Has Occured Contact your DBA'' ;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
