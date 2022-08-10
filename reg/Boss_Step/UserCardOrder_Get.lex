获取CARD订购信息
{@}{cfl}reg/boss_step/cqboss_cookie
{@}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=refresh&pk=-1&condition=prodInstId%3D[t6_product_instance_id]&tmpPercentWidth=840&localcache=table&url_source=XMLHTTP
{|}<TableInfo [\r\n]
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
{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{||}boss.cqccn.com{||}[var_res]{|}post
			
{@}{clr}
{@}{cap}"G-TableBody">{?}</tbody>
{@}{ral}[=]0[=]
{@}{clr}
{@}{cap}<tr {?}</tr>
{@}{for}0{||}0{||}1{|}{lex}reg\boss_step\UserCardOrder_Save.lex{\|\|}[t8_idx_sub]{-}[foridx]
																									 {\|\|\|}[t8_data]{-}[forres]
																									 {\|\|\|}[tagid8]{-}[tagid6]
																									 {\|\|\|}[t8_title]{-}[t6_title]
																									 {\|\|\|}[dbtitle8]{-}[dbtitle6]
																									 {\|\|\|}[t8_idx]{-}[t6_idx]
																									 {\|\|\|}[t8_cust_id]{-}[t6_cust_id]
																									 {\|\|\|}[t8_cust_addr_id]{-}[t6_cust_addr_id] 
																									 {\|\|\|}[t8_product_instance_id]{-}[t6_product_instance_id]
																									 {\|\|\|}[t8_acct_id]{-}[t6_acct_id] 
											{\|}utf-8
									 {|}1
{@}{-ifc}[=]0[=]{||}={||}{|}{\@}{sql}DB_Conn_CqBoss_online{\|}update taskcardorder set Done=1 where id=[t6_id];{\|}1{\|}[t6_id]
													 {\@}{shw}[tagid6]-[t6_product_instance_id]. 没有值。
                        {|}{\@}{sql}DB_Conn_CqBoss_online{\|}update taskcardorder set Done=1 where id=[t6_id];{\|}1{\|}[t6_id]
                           {\@}{shw}[tagid6]-[t6_product_instance_id]. CardOrder save order ok.
                           
{@}{sql}DB_Conn_CqBoss_online{|}delete from taskcardorder where id=[t6_id];{|}1{|}[t6_id]
{@}{shw}[t6_id].[t6_title]. save cardorder ok.
{@}{clr}