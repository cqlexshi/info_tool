CA卡钱的数据
{@}{cfl}reg/boss_step/cqboss_cookie
{@}{cug}http://boss.cqccn.com:18081/boss_web/boss/customer/cust/acctJumpToZG.jsp?acct_id=[t4_acct_id]&custAddrId=[t4_cust_addr_id]&custId=[t4_cust_id]&custName=cqc&custStdAddrID={|}{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{||}boss.cqccn.com{||}[var_res]{|}post
{@}{cug}http://boss.cqccn.com:8085/ainbs/gridturnpage?action=refresh&pk=-1&condition=AcctId%3D[t4_acct_id]%26ServId%3D0%26RegionId%3D23%26corpOrgId%3D[t4_own_corp_org_id]&tmpPercentWidth=853&localcache=table&url_source=XMLHTTP
{|}<TableInfo [\r\n]
tableid='tblBanlance' setname='com.asiainfo.pgate.bo.account.payment.SETBillInfo' tablemodel='com.ai.appframe2.web.datamodel.MethodModelForService' implservice_name='com.asiainfo.pgate.service.account.IPaymentOBDSRV' implservice_querymethod='qryBookBalanceAndServTotalBlcAndBill(String AcctId, String ServId, String RegionId, String corpOrgId)' [\r\n]
multiselect='true' width='100%' height='310' footdisplay='none' >[\r\n]
<col fieldname='CORP_ORG_ID' visible='false' />[\r\n]
<col fieldname='ACCT_ID' visible='false' />[\r\n]
<col fieldname='SERV_ID' visible='false' />[\r\n]
<col fieldname='SERVICE_TYPE' visible='false' />[\r\n]
<col fieldname='SERVICE_ID' visible='false' />[\r\n]
<col fieldname='SERVICE_NAME' visible='false' />[\r\n]
<col fieldname='USER_TYPE' visible='false' />[\r\n]
<col fieldname='ACCT_BALANCE_ID' visible='false' />[\r\n]
<col fieldname='BOOK_TYPE' visible='false' />[\r\n]
<col fieldname='BALANCE_TYPE_ID' visible='false' />[\r\n]
<col fieldname='RESERVE_BALANCE' visible='false' />[\r\n]
<col fieldname='AMOUNT' visible='false' />[\r\n]
<col fieldname='SUB_BILL_ID' visible='false' />[\r\n]
<col fieldname='IF_ALLOW_DRAW' visible='false' />[\r\n]
<col fieldname='CONTROL_TYPE' visible='false' />[\r\n]
<col fieldname='NOTSHOW' visible='false' />[\r\n]
<col fieldname='SERVICEBLCAMOUNT' visible='false' />[\r\n]
<col fieldname='SERVICEBILLAMOUNT' visible='false' />[\r\n]
<col fieldname='SERVICE_TYPE_NAME' width='80'  />[\r\n]
<col fieldname='BALANCE_TYPE_NAME' width='180'  />[\r\n]
<col fieldname='ORIGINAL_BALANCE' width='85'  />[\r\n]
<col fieldname='BALANCE' title='当前余额'  />[\r\n]
<col fieldname='UNWOFF_BALANCE' width='80'  />[\r\n]
<col fieldname='ACC_NBR' width='150'  />[\r\n]
<col fieldname='IF_ALLOW_DRAW_NAME' width='125'  />[\r\n]
<col fieldname='EFF_DATE'  />[\r\n]
<col fieldname='EXP_DATE'  />[\r\n]
</TableInfo>
{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{|}post

{@}{clr}
{@}{cap}"G-TableBody">{?}</tbody>
{@}{ral}[=]0[=]</end>
{@}{clr}
{@}{cap}SERV_ID="S{?}</end>
{@}{ral}<tr class="GD-Two" height='20' I='' CORP_ORG_ID="0" ACCT_ID="0" SERV_ID="S[=]0[=]
{@}{rep}SERV_ID="S{-}SERV_ID="
{@}{rep}""{-}"0"
{@}{-saf}cqboss_online_ca_money.htm
{@}{clr}
{@}{cap}<tr {?}</tr>
{@}{for}0{||}0{||}1{|}{lex}reg\boss_step\UserMoney_Save.lex{\|\|}[t7_idx_sub]{-}[foridx]
																									 {\|\|\|}[t7_data]{-}[forres]
																									 {\|\|\|}[tagid7]{-}[tagid4]
																									 {\|\|\|}[t7_title]{-}[t4_title]
																									 {\|\|\|}[t7_idx]{-}[t4_idx]
																									 {\|\|\|}[t7_cust_id]{-}[t4_cust_id]
																									 {\|\|\|}[t7_cust_addr_id]{-}[t4_cust_addr_id]
																									 {\|\|\|}[dbtitle7]{-}[dbtitle4]
																									 {\|\|\|}[t7_acct_id]{-}[t4_acct_id]
                       
{@}{sql}DB_Conn_CqBoss_online{|}delete from taskmoney where id=[t4_id];{|}1{|}[t4_id]
{@}{shw}[t4_id].[t4_title] save money ok.
{@}{clr}