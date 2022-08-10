抓取ca保存Card列表，包括卡号和开户时间等
{@}{cfl}reg/boss_step/cqboss_cookie
{@}{cal}[var_res]

{>}
{@}{cug}http://boss.cqccn.com:18081/boss_web/boss/customer/cust/customerTotalViewTree.jsp?custName=abc&custId=[t4_cust_id_jm]&custAddrId=
{|}{|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}false{||}boss.cqccn.com{||}[$]0,0[$]{|}post
{@}{cap}pk="{?}"
{@}{-shw}http://boss.cqccn.com:18081/boss_web/dbtreenewservlet?action=getchild&pk=[=]0[=]

{@}{cug}http://boss.cqccn.com:18081/boss_web/dbtreenewservlet?action=getchild&pk=[=]0[=]&parentval=[t4_cust_id_jm]%26[t4_cust_addr_id]%26_1111&parentnodeid=$Tree_custTree|||0-0&parentuserobj=556_null?custAddrId%3D[t4_cust_addr_id]%26custId%3D[t4_cust_id]%26custName%3Dabc%26custStdAddrID%3D&parentlevel=1&parentchecksts=false&parenttext=账户信息&parentislastnode=true|||false&getdeep=1&parentfoldopenpic=/image/tree/fo1.gif&parentfoldclosepic=/image/tree/fc1.gif&parentleafpic=/image/tree/l1.gif&
{|}{|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}false{||}boss.cqccn.com{||}[$]0,0[$]{|}post
{@}{-shw}-----------[var_res]
{@}{clr}
{@}{cap}acct_id={?}"

{>}
{@}{cfl}reg/boss_step/cqboss_cookie
{@}{cug}http://boss.cqccn.com:18081/boss_web/boss/customer/cust/acctJumpToZG.jsp?acct_id=[$]1,0[$]&custAddrId=[t4_cust_addr_id]&custId=[t4_cust_id]&custName=cqc&custStdAddrID={|}{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{||}boss.cqccn.com{||}[var_res]{|}post
{@}{cug}http://boss.cqccn.com:8085/ainbs/gridturnpage?action=refresh&pk=-1&condition=qryType%3D22%26qryValue%3D[$]1,0[$]%26isUse%3Dfalse%26regionId%3D23%26corpOrgId%3D[t4_own_corp_org_id]&tmpPercentWidth=1009&localcache=table&url_source=XMLHTTP
{|}<TableInfo [\r\n]
tableid='tblSelectPI' setname='com.asiainfo.pgate.bo.account.query.SETQProductInstance' tablemodel='com.ai.appframe2.web.datamodel.MethodModelForService' implservice_name='com.asiainfo.pgate.service.query.IQueryInfoSRV' implservice_querymethod='qryProdInstByKeyNum(UserInfoInterface $USERINFO, String qryValue, String qryType, boolean isUse, String regionId, String corpOrgId)' [\r\n]
multiselect='true' width='100%' height='100' footdisplay='none' >[\r\n]
<col fieldname='KEY_NUM_TYPE_CODE' visible='false' />[\r\n]
<col fieldname='AREA_CODE' visible='false' />[\r\n]
<col fieldname='AREA_ID' visible='false' />[\r\n]
<col fieldname='EXCHANGE_ID' visible='false' />[\r\n]
<col fieldname='ACCT_ID' visible='false' />[\r\n]
<col fieldname='KEY_NUM' visible='false' />[\r\n]
<col fieldname='ADDRESS_DESC' visible='false' />[\r\n]
<col fieldname='REGION_ID' visible='false' />[\r\n]
<col fieldname='CORP_ORG_ID' visible='false' />[\r\n]
<col fieldname='PRODUCT_INSTANCE_ID'  />[\r\n]
<col fieldname='KEY_NUM_TYPE_CODE_DESC' width='150'  />[\r\n]
<col fieldname='IF_IS_MAIN'  />[\r\n]
<col fieldname='ACC_NBR' width='150'  />[\r\n]
<col fieldname='TOTALBLCAMOUNT'  />[\r\n]
<col fieldname='TOTALBILLAMOUNT'  />[\r\n]
<col fieldname='PRODUCT_INSTANCE_STATE'  />[\r\n]
<col fieldname='STATE_DATE' width='200'  />[\r\n]
</TableInfo>
{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{|}post


{@}{clr}
{@}{cap}"G-TableBody">{?}</tbody>
{@}{ral}[=]0[=]
{@}{-saf}cqboss_online_card.htm
{@}{clr}
{@}{cap}<tr {?}</tr>

{@}{for}0{||}0{||}1{|}{lex}reg\boss_step\UserCard_Save.lex{\|\|}[t6_idx_sub]{-}[foridx]
																									 {\|\|\|}[t6_data]{-}[forres]
																									 {\|\|\|}[tagid6]{-}[tagid4]
																									 {\|\|\|}[t6_title]{-}[t4_title]
																									 {\|\|\|}[t6_id]{-}[t4_id]
																									 {\|\|\|}[t6_cust_id]{-}[t4_cust_id]
																									 {\|\|\|}[t6_cust_addr_id]{-}[t4_cust_addr_id]
																									 {\|\|\|}[dbtitle6]{-}[dbtitle4]
																									 {\|\|\|}[t6_acct_id]{-}[$]1,0[$]
																				{\|}utf-8
 
{@}{sql}DB_Conn_CqBoss_online{|}delete from taskcard where id=[t4_id];{|}1{|}[t4_id]
{@}{shw}[t4_id].[t4_title]. save card ok.
{@}{clr}
