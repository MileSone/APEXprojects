prompt --application/shared_components/security/authentications/noauth
begin
--   Manifest
--     AUTHENTICATION: noAuth
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.4'
,p_default_workspace_id=>38192888561405612
,p_default_application_id=>163
,p_default_id_offset=>0
,p_default_owner=>'APPDEV'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(14805727007586738)
,p_name=>'noAuth'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_01=>'nobody'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
