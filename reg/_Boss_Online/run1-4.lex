获取用户电话
{@}{-shw}开始抓取用户的电话列表...
{@}{cfl}reg/boss_online/cqboss_cookie
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
{@}{-saf}cqboss_online_tel.htm
{@}{cap}"G-TableBody">{?}</tbody>
{@}{ral}[=]0[=]
{@}{clr}
{@}{cap}<tr {?}</tr>
{@}{for}0{||}0{||}1{|}{lex}reg\boss_online\run1-5.lex{\|\|}[t5_idx_sub]{-}[foridx]
																									 {\|\|\|}[t5_data]{-}[forres]
																									 {\|\|\|}[t5_cust_addr_id]{-}[t4_cust_addr_id]
																									 {\|\|\|}[t5_cust_id]{-}[t4_cust_id]
																									 {\|\|\|}[tagid5]{-}[tagid4]
																									 {\|\|\|}[t5_title]{-}[t4_title]
																									 {\|\|\|}[t5_idx]{-}[t4_idx]
																									 {\|\|\|}[dbtitle5]{-}[dbtitle4]
																				{\|}utf-8


{@}抓取ca保存Card列表，包括卡号和开户时间等
{@}{-shw}[t4_cust_id]->[t4_cust_addr_id]
{@}{cug}http://boss.cqccn.com:18081/boss_web/boss/customer/cust/acctJumpToZG.jsp?acct_id=&custAddrId=&custId=[t4_cust_id]&custName=cqc&custStdAddrID={|}{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{|}post
{@}{cug}http://boss.cqccn.com:8085/ainbs/gridturnpage?action=refresh&pk=-1&condition=qryType%3D22%26qryValue%3D[t4_cust_addr_id]%26isUse%3Dfalse%26regionId%3D23%26corpOrgId%3D[t4_own_corp_org_id]&tmpPercentWidth=1009&localcache=table&url_source=XMLHTTP
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
{@}{for}0{||}0{||}1{|}{lex}reg\boss_online\run1-6.lex{\|\|}[t6_idx_sub]{-}[foridx]
																									 {\|\|\|}[t6_data]{-}[forres]
																									 {\|\|\|}[tagid6]{-}[tagid4]
																									 {\|\|\|}[t6_title]{-}[t4_title]
																									 {\|\|\|}[t6_idx]{-}[t4_idx]
																									 {\|\|\|}[t6_cust_id]{-}[t4_cust_id]
																									 {\|\|\|}[t6_cust_addr_id]{-}[t4_cust_addr_id]
																									 {\|\|\|}[dbtitle6]{-}[dbtitle4]
																				{\|}utf-8
{@}{-shw} step1: [t4_title]-[t4_cust_addr_id]. save card ok.  


{@}CA卡钱的数据
{@}{cug}http://boss.cqccn.com:8085/ainbs/gridturnpage?action=refresh&pk=-1&condition=AcctId%3D[t4_cust_addr_id]%26ServId%3D0%26RegionId%3D23%26corpOrgId%3D[t4_own_corp_org_id]&tmpPercentWidth=853&localcache=table&url_source=XMLHTTP
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
{@}{saf}cqboss_online_ca_money.htm
{@}{clr}
{@}{cap}<tr {?}</tr>
{@}{for}0{||}0{||}1{|}{lex}reg\boss_online\run1-7.lex{\|\|}[t7_idx_sub]{-}[foridx]
																									 {\|\|\|}[t7_data]{-}[forres]
																									 {\|\|\|}[tagid7]{-}[tagid4]
																									 {\|\|\|}[t7_title]{-}[t4_title]
																									 {\|\|\|}[t7_idx]{-}[t4_idx]
																									 {\|\|\|}[t7_cust_id]{-}[t4_cust_id]
																									 {\|\|\|}[t7_cust_addr_id]{-}[t4_cust_addr_id]
																									 {\|\|\|}[dbtitle7]{-}[dbtitle4]
{@}{shw} [t4_title].[t4_cust_addr_id]. save card ok. 