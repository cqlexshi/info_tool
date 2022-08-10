保存姓名、地址、身份证等数据
{@}{-shw}[tagid3].[td_idx].[td_idx_sub].[td_data]
{@}{ral}[td_data]
{@}{rep}""{-}"null"
{@}{rep}/>{-}>null</td>

{@}{cap} CUST_ADDR_ID="{?}"
{@}{cap} STD_ADDR_ID="{?}"
{@}{cap} CUST_ID="{?}"
{@}{cap} HOST_CUST_ID="{?}"
{@}{cap} OWN_ORG_ID="{?}"
{@}{cap} OWN_CORP_ORG_ID="{?}"
{@}{cap} TRANSFER_STATUS="{?}"

{@}{cap}>{?}<

{@}{jsr}reg/comm/des.js{||}utf-8{|}javascript{|}strEnc{||}[=]2[=],qiu7Wx,,
{@}{-shw}enc CUST_ID：[=]18[=]

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
{@}{-shw}DB_Conn_CqBoss_online{|}REPLACE INTO UserContact[dbtitle3](CUST_ADDR_ID,STD_ADDR_ID,CUST_ID,CUST_ID_JM,HOST_CUST_ID,OWN_ORG_ID,OWN_CORP_ORG_ID,TRANSFER_STATUS,STD_ADDR_NAME,DOOR_NAME,AUDIT_FLAG,CUST_STATUS,CUST_CODE,CUST_NAME,CUST_LEVEL,CUST_TYPE,CUST_CERT_TYPE,CUST_CERT_NO,IS_HOST,InTime,tagid) values('[=]0[=]','[=]1[=]','[=]2[=]','[=]18[=]','[=]3[=]','[=]4[=]','[=]5[=]','[=]6[=]','[=]7[=]','[=]8[=]','[=]9[=]','[=]10[=]','[=]11[=]','[=]12[=]','[=]13[=]','[=]14[=]','[=]15[=]','[=]16[=]','[=]17[=]','00:00',[tagid3]);
INTO   TaskTel(dbtitle,cust_id,cust_id_jm,cust_addr_id,product_instance_id,own_corp_org_id,tagid) values('[dbtitle3]',[2],'[18]',[0],0,[5],[tagid3]);
																         INTO  TaskCard(dbtitle,cust_id,cust_id_jm,cust_addr_id,product_instance_id,own_corp_org_id,tagid) values('[dbtitle3]',[=]2[=],'[=]18[=]',[=]0[=],0,[=]5[=],[tagid3]);
																         INTO TaskTel(dbtitle,cust_id,cust_id_jm,cust_addr_id,product_instance_id,own_corp_org_id,tagid) values('[dbtitle3]',[=]2[=],'[=]18[=]',[=]0[=],0,[=]5[=],[tagid3]);
{@}{sql}DB_Conn_CqBoss_online{|}REPLACE  INTO UserContact[dbtitle3](CUST_ADDR_ID,STD_ADDR_ID,CUST_ID,CUST_ID_JM,HOST_CUST_ID,OWN_ORG_ID,OWN_CORP_ORG_ID,TRANSFER_STATUS,STD_ADDR_NAME,DOOR_NAME,AUDIT_FLAG,CUST_STATUS,CUST_CODE,CUST_NAME,CUST_LEVEL,CUST_TYPE,CUST_CERT_TYPE,CUST_CERT_NO,IS_HOST,InTime,tagid) VALUES('[0]'    ,'[1]'    ,[2]      , '[18]'   ,'[3]'    ,'[4]'    ,'[5]'    ,'[6]'    ,'[7]'    ,'[8]'    ,'[9]'    ,'[10]'    ,'[11]'    ,'[12]'    ,'[13]'    ,'[14]'    ,'[15]'    ,'[16]'    ,'[17]'    ,UNIX_TIMESTAMP(NOW()),[tagid3]);
																INSERT   INTO   TaskTel(dbtitle,cust_id,cust_id_jm,cust_addr_id,product_instance_id,own_corp_org_id,tagid) values('[dbtitle3]',[2],'[18]',[0],0,[5],[tagid3]);
																INSERT   INTO  TaskCard(dbtitle,cust_id,cust_id_jm,cust_addr_id,product_instance_id,own_corp_org_id,tagid) values('[dbtitle3]',[2],'[18]',[0],0,[5],[tagid3]);
															{||}[0]{-}[=]0[=]
															{||}[1]{-}[=]1[=]
															{||}[2]{-}[=]2[=]
															{||}[3]{-}[=]3[=]
															{||}[4]{-}[=]4[=]
															{||}[5]{-}[=]5[=]
															{||}[6]{-}[=]6[=]
															{||}[7]{-}[=]7[=]
															{||}[8]{-}[=]8[=]
															{||}[9]{-}[=]9[=]
															{||}[10]{-}[=]10[=]
															{||}[11]{-}[=]11[=]
															{||}[12]{-}[=]12[=]
															{||}[13]{-}[=]13[=]
															{||}[14]{-}[=]14[=]
															{||}[15]{-}[=]15[=]
															{||}[16]{-}[=]16[=]
															{||}[17]{-}[=]17[=]
															{||}[18]{-}[=]18[=]
								{|}1{|}[=]0[=]			
											
{@}{-shw}[tagid3]-[td_idx_sub]. contact save ok.																
{@}{clr}