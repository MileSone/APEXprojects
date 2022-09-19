prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.4'
,p_default_workspace_id=>38192888561405612
,p_default_application_id=>163
,p_default_id_offset=>0
,p_default_owner=>'APPDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(14793306258565604)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'mileTest'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'MILE'
,p_last_upd_yyyymmddhh24miss=>'20220525084740'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14802679225565707)
,p_plug_name=>'mileTest'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(14673981493565460)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10601524695582510)
,p_name=>'P1_NEW'
,p_item_sequence=>10
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(14766114767565524)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10601419913582509)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_clob clob;',
'begin',
'    apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'    apex_web_service.g_request_headers(1).value :=''application/json'';',
'    apex_web_service.g_request_headers(2).name := ''token'';',
'    apex_web_service.g_request_headers(2).value :=''mytoken'';  ',
'    l_clob := apex_web_service.make_rest_request(',
'        p_url => ''https://bjsnyjci7zw4h45bqhqd2jd5j4.apigateway.ap-chuncheon-1.oci.customer-oci.com/function-workshop/python-func'',',
'        p_http_method => ''GET''',
'    );',
'',
'        apex_json.parse(',
'            p_source => l_clob',
'        );',
'       ',
'        htp.p(''l_clob='' || apex_json.get_varchar2(''ip''));',
'',
'   INSERT INTO LOG_INFO (LOGGING) VALUES (''Message ''|| apex_json.get_varchar2(''ip''));',
'        commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Success mile'
);
wwv_flow_imp.component_end;
end;
/
