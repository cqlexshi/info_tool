保存Card列表中和卡的信息，但不包括金额
{@}{-shw}no.[tr_idx]  txt=[t6_data]
{@}{ral}[t6_data]
{@}{rep}""{-}"null"
{@}{rep}/>{-}>null</td>

{@}{cal}[t6_cust_id]
{@}{cap} I='{?}' K
{@}{cap} KEY_NUM_TYPE_CODE="{?}"
{@}{cap} KEY_NUM="{?}"
{@}{cap} REGION_ID="{?}"
{@}{cap} CORP_ORG_ID="{?}"

{@}{cap}>{?}<

{@}{-shw}1.cust_id=[=]0[=]
				2.I=[=]1[=]
        3.KEY_NUM_TYPE_CODE=[=]2[=]
        4.KEY_NUM=[=]3[=]
        5.REGION_ID=[=]4[=]
        6.CORP_ORG_ID=[=]5[=]
        
        7.null=[=]6[=]
        7.PRODUCT_INSTANCE_ID=[=]7[=]
        8.KEY_NUM_TYPE_CODE_DESC=[=]8[=]
        9.IF_IS_MAIN=[=]9[=]
        10.ACC_NBR=[=]10[=]
        11.TOTALBLCAMOUNT=[=]11[=]
        12.TOTALBILLAMOUNT=[=]12[=]
        13.PRODUCT_INSTANCE_STATE=[=]13[=]
        14.STATE_DATE=[=]14[=]
        
        
{@}{-shw}REPLACE INTO UserCard[dbtitle6](Cust_Id,I,KEY_NUM_TYPE_CODE,KEY_NUM,REGION_ID,CORP_ORG_ID,PRODUCT_INSTANCE_ID,KEY_NUM_TYPE_CODE_DESC,IF_IS_MAIN,ACC_NBR,TOTALBLCAMOUNT,TOTALBILLAMOUNT,PRODUCT_INSTANCE_STATE,STATE_DATE,CUST_ADDR_ID,InTime) VALUES([=]0[=],[=]1[=],'[=]2[=]','[=]3[=]',[=]4[=],[=]5[=],[=]7[=],'[=]8[=]','[=]9[=]','[=]10[=]',[=]11[=],[=]12[=],'[=]13[=]','[=]14[=]',[t6_cust_addr_id],UNIX_TIMESTAMP(NOW())); 
{@}{sql}DB_Conn_CqBoss_online{|}REPLACE INTO UserCard[dbtitle6](Cust_Id,
                                                        CUST_ADDR_ID,
																											  I,
																												KEY_NUM_TYPE_CODE,
																												KEY_NUM,
																												REGION_ID,
																												CORP_ORG_ID,
																												PRODUCT_INSTANCE_ID,
																												KEY_NUM_TYPE_CODE_DESC,
																												IF_IS_MAIN,
																												ACC_NBR,
																												TOTALBLCAMOUNT,
																												TOTALBILLAMOUNT,
																												PRODUCT_INSTANCE_STATE,
																												STATE_DATE,
																												tagid,
																												InTime)  VALUES([0],[15],[1],'[2]','[3]',[4],[5],[7],'[8]','[9]','[10]',[11],[12],'[13]','[14]',[16],UNIX_TIMESTAMP(NOW()));
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
																																				{||}[15]{-}[t6_cust_addr_id]
																																				{||}[16]{-}[tagid6]
					{|}1{|}[=]7[=]

{>}
{@}保存Card订购的套餐
{@}{-shw}8.type=[$]0,8[$].	
{@}{ifc}[$]0,8[$]{||}in{||}数字电视用户
				{|}		
{\@}{cfl}reg/boss_online/cqboss_cookie
{\@}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=refresh&pk=-1&condition=prodInstId%3D[$]0,7[$]&tmpPercentWidth=840&localcache=table&url_source=XMLHTTP
{\|}<TableInfo [\r\n]
tableid="tblUserSerPkg" setname="com.asiainfo.boss.so.instance.base.web.SETInsSrvPkg" tablemodel="com.ai.appframe2.web.datamodel.MethodModelForService" implservice_name="com.asiainfo.boss.so.instance.base.service.interfaces.IUserInfoQuerySV" implservice_querymethod="getUserServicePkgs(String prodInstId,int $STARTROWINDEX, int $ENDROWINDEX)" implservice_countmethod="getUserServicePkgsCount(String prodInstId)" [\r\n]
multiselect="false" isquerycount="TRUE" width="100%" pagesize="50" >[\r\n]
<col fieldname='SRVPKG_INST_ID' visible='false' />[\r\n]
<col fieldname='OPER_STATE' visible='false' />[\r\n]
<col fieldname="OFFER_INST_ID" width="130"  />[\r\n]
<col fieldname="SRVPKG_ID" width="130"  />[\r\n]
<col fieldname="VALID_DATE" width="80"  />[\r\n]
<col fieldname="EXPIRE_DATE" width="80"  />[\r\n]
<col fieldname="STATE" width="50"  />[\r\n]
<col fieldname="ORG_ID"  />[\r\n]
<col fieldname="OP_ID" width="80"  />[\r\n]
<col fieldname="VALID_TYPE" width="80"  />[\r\n]
<col fieldname="CREATE_DATE" width="80"  />[\r\n]
<col fieldname="OS_STATUS"  />[\r\n]
<col fieldname="DESCRIPTION"  />[\r\n]
</TableInfo>
{\|}multipart/form-data{\|\|}GB2312{\|\|}gzip, deflate{\|\|}false{\|\|}boss.cqccn.com{\|\|}[var_res]{\|}post	
				{|}{-shw} n8. nothing.
			
{@}{-shw}[var_res]
{@}{clr}
{@}{cap}"G-TableBody">{?}</tbody>
{@}{ral}[=]0[=]
{@}{clr}
{@}{cap}<tr {?}</tr>
{@}{for}0{||}0{||}1{|}{lex}reg\boss_online\run1-8.lex{\|\|}[t8_idx_sub]{-}[foridx]
																									 {\|\|\|}[t8_data]{-}[forres]
																									 {\|\|\|}[tagid8]{-}[tagid6]
																									 {\|\|\|}[t8_title]{-}[t6_title]
																									 {\|\|\|}[t8_idx]{-}[t6_idx]
																									 {\|\|\|}[t8_cust_id]{-}[t6_cust_id]
																									 {\|\|\|}[t8_cust_addr_id]{-}[t6_cust_addr_id] 
																									 {\|\|\|}[t8_product_instance_id]{-}[$]0,7[$]
																									 {\|\|\|}[dbtitle8]{-}[dbtitle6]
								{\|}utf-8