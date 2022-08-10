获取用户电话
{@}{-shw}开始抓取用户的电话列表...
{@}{cfl}reg/boss_step/cqboss_cookie
{@}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=refresh&pk=-1&condition=custId%3D[t4_cust_id_jm]&tmpPercentWidth=848&localcache=table&url_source=XMLHTTP
{|}<TableInfo [\r\n]
tableid="tblContactInfo" setname="com.asiainfo.boss.customer.cust.web.SETCMCustContactInfo" tablemodel="com.ai.appframe2.web.datamodel.MethodModelForService" implservice_name="com.asiainfo.boss.customer.cust.service.interfaces.ICMCustomerSV" implservice_querymethod="queryCustContactInfoByCustIdEnCode(String custId)" [\r\n]
multiselect="true" isquerycount="TRUE" width="100%" height="40" pagesize="2" footdisplay="false" >[\r\n]
<col fieldname='CONT_ID' visible='false' />[\r\n]
<col fieldname="CONT_NAME" width="150"  />[\r\n]
<col fieldname="CONT_DFLT_MODE"  />[\r\n]
<col fieldname="CONT_MOBILE1"  />[\r\n]
<col fieldname="CONT_MOBILE2"  />[\r\n]
<col fieldname="CONT_PHONE1"  />[\r\n]
<col fieldname="CONT_PHONE2"  />[\r\n]
<col fieldname="CONT_ADDR" width="150"  />[\r\n]
<col fieldname="CONT_ZIPCODE"  />[\r\n]
<col fieldname="CONT_EMAIL"  />[\r\n]
<col fieldname="CONT_CERT_TYPE" width="150"  />[\r\n]
</TableInfo>
{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{||}boss.cqccn.com{||}[var_res]{|}post
{@}{-saf}cqboss_steo_tel.htm
{@}{cap}"G-TableBody">{?}</tbody>
{@}{ral}[=]0[=]
{@}{clr}
{@}{cap}<tr {?}</tr>
{@}{for}0{||}0{||}1{|}{lex}reg\boss_step\UserTel_Save.lex{\|\|}[t5_idx_sub]{-}[foridx]
																									 {\|\|\|}[t5_data]{-}[forres]
																									 {\|\|\|}[t5_cust_addr_id]{-}[t4_cust_addr_id]
																									 {\|\|\|}[t5_cust_id]{-}[t4_cust_id]
																									 {\|\|\|}[tagid5]{-}[tagid4]
																									 {\|\|\|}[t5_title]{-}[t4_title]
																									 {\|\|\|}[t5_idx]{-}[t4_idx]
																									 {\|\|\|}[dbtitle5]{-}[dbtitle4]
																				{\|}utf-8

{@}{sql}DB_Conn_CqBoss_online{|}delete from tasktel where id=[t4_id];{|}1{|}[t4_id]
{@}{shw}[t4_id].[t4_title]. Tel save ok.
{@}{clr}