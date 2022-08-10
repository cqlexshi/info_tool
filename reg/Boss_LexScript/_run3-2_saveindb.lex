保存数据到数据库中
{@}{-hw}no.[tr_idx]  txt=[tr_data]
{@}{ral}[tr_data]
{@}{rep}""{-}"null"
{@}{rep}"/>{-}">null</td>

{@}{cap} CUST_ADDR_ID="{?}"
{@}{cap} STD_ADDR_ID="{?}"
{@}{cap} CUST_ID="{?}"
{@}{cap} HOST_CUST_ID="{?}"
{@}{cap} OWN_ORG_ID="{?}"
{@}{cap} OWN_CORP_ORG_ID="{?}"
{@}{cap} TRANSFER_STATUS="{?}"

{@}{cap}>{?}<

{@}{-shw}[res]
{@}{-shw}1.CUST_ADDR_ID=[=]0[=]
        2.STD_ADDR_ID=[=]1[=]
        3.CUST_ID=[=]2[=]
        4.HOST_CUST_ID=[=]3[=]
        5.OWN_ORG_ID=[=]4[=]
        6.OWN_CORP_ORG_ID=[=]5[=]
        7.TRANSFER_STATUS=[=]6[=]
        8.STD_ADDR_NAME=[=]7[=]
        9.DOOR_NAME=[=]8[=]
        10.AUDIT_FLAG=[=]9[=]
        11.CUST_STATUS=[=]10[=]
        12.CUST_CODE=[=]11[=]
        13.CUST_NAME=[=]12[=]
        14.CUST_LEVEL=[=]13[=]
        15.CUST_TYPE=[=]14[=]
        16.CUST_CERT_TYPE=[=]15[=]
        17.CUST_CERT_NO=[=]16[=]
        18.IS_HOST=[=]17[=]
{@}{-shw}Insert into UserInfo(CUST_ADDR_ID,STD_ADDR_ID,CUST_ID,HOST_CUST_ID,OWN_ORG_ID,OWN_CORP_ORG_ID,TRANSFER_STATUS,STD_ADDR_NAME,DOOR_NAME,AUDIT_FLAG,CUST_STATUS,CUST_CODE,CUST_NAME,CUST_LEVEL,CUST_TYPE,CUST_CERT_TYPE,CUST_CERT_NO,IS_HOST) values('[=]0[=]','[=]1[=]','[=]3[=]','[=]4[=]','[=]5[=]','[=]6[=]','[=]7[=]','[=]8[=]','[=]9[=]','[=]10[=]','[=]11[=]','[=]12[=]','[=]13[=]','[=]14[=]','[=]15[=]','[=]16[=]','[=]17[=]');
{@}{sql}DB_Conn_200_CqBoss{|}DB_SQL_200_CqBoss_UserContact_Add{||}[0]{-}[=]0[=]{||}[1]{-}[=]1[=]{||}[2]{-}[=]2[=]{||}[3]{-}[=]3[=]{||}[4]{-}[=]4[=]{||}[5]{-}[=]5[=]{||}[6]{-}[=]6[=]{||}[7]{-}[=]7[=]{||}[8]{-}[=]8[=]{||}[9]{-}[=]9[=]{||}[10]{-}[=]10[=]{||}[11]{-}[=]11[=]{||}[12]{-}[=]12[=]{||}[13]{-}[=]13[=]{||}[14]{-}[=]14[=]{||}[15]{-}[=]15[=]{||}[16]{-}[=]16[=]{||}[17]{-}[=]17[=]{|}1
{@}{shw}rd no.[tr_idx] save ok.  