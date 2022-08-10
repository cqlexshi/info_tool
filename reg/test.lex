功能：登录，并抓用户ca卡号\开户时间 和账户总余额，及分类明细
{@}登录
{@}{cug}http://boss.cqccn.com:8888/aicas/login{|}username=407390&password=56CC3FAA8DC8D4D4A13DC1F212E1DEE596797BD66E370AC5&service=http%3A%2F%2Fboss.cqccn.com%3A18081%2Fboss_web%2Fwebframe%2Fshdesktopui%2Fimages%2Ficon_login.png&ai_param_ip=192.168.0.23&ai_param_hostname=DESKTOD&ai_param_mac=64%3ABB%4B6A%3A2B%3AD3%3AA2{|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}false{|}post
{@}{cug}http://boss.cqccn.com:18081/boss_web/boss/customer/cust/acctJumpToZG.jsp?acct_id=&custAddrId=&custId=7035073&custName=ABC5&custStdAddrID={|}{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{|}post
{@} ca卡号和开户时间
{@}{cug}http://boss.cqccn.com:8085/ainbs/gridturnpage?action=refresh&pk=-1&condition=qryType%3D22%26qryValue%3D19477995%26isUse%3Dfalse%26regionId%3D23%26corpOrgId%3D232&tmpPercentWidth=1009&localcache=table&url_source=XMLHTTP
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
{@}{shw}[sys_var_res]

{@}钱的数据
{@}{cug}http://boss.cqccn.com:8085/ainbs/gridturnpage?action=refresh&pk=-1&condition=AcctId%3D19477995%26ServId%3D0%26RegionId%3D23%26corpOrgId%3D232&tmpPercentWidth=853&localcache=table&url_source=XMLHTTP
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
{@}{shw}[var_res]