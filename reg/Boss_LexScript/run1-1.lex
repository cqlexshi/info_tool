功能：登录，并抓取多页
{@}{shw} step-1 :  tagid=[tagid]
{@}登录
{@}{------cug}http://boss.cqccn.com:8888/aicas/login{|}username=407390&password=56CC3FAA8DC8D4D4A13DC1F212E1DEE596797BD66E370AC5&service=http%3A%2F%2Fboss.cqccn.com%3A18081%2Fboss_web%2Fwebframe%2Fshdesktopui%2Fimages%2Ficon_login.png&ai_param_ip=192.168.0.23&ai_param_hostname=DESKTOD&ai_param_mac=64%3ABB%4B6A%3A2B%3AD3%3AA2{|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}false{|}post
{@}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=refresh&pk=-1&condition=operId%3D49EAE914365ED2D47FAFEA671042BB18%26opLoginOrganizeId%3D559E2E0B06635FF361E25C3ED4FEAF8B%26stdAddrId%3D%26doorName%3D%26oldCustCode%3D%26custCode%3D%26custName%3D%26custId%3D%26custCertTypeId%3D4894363E67A6FB0D%26custCertNo%3D%26contName%3D%26contPhone1%3D%26contMobile1%3D%26jstMobile%3D%26acctName%3D%26vipProp%3D%26userName%3D%26resEquNo1%3D%26resEquNo2%3D%26resEquNo3%3D%26resEquNo4%3D%26resEquNo5%3D%26resEquNo6%3D%26status%3D%26isHost%3D%26isTenant%3D%26ownOrgId%3D[tagtitle]%26custTypeTemp%3D4894363E67A6FB0D%26loginName%3D&localcache=table&url_source=XMLHTTP
	     {|}<TableInfo [\r\n]
tableid='tblCustomer' setname='com.asiainfo.boss.customer.cust.web.CMCustomer' tablemodel='com.ai.appframe2.web.datamodel.MethodModelForService' implservice_name='com.asiainfo.boss.customer.cust.service.interfaces.ICMCustomerSV' implservice_querymethod='queryCommonCust(String operId,String opLoginOrganizeId,String stdAddrId, String doorName,[\r\n]
			String oldCustCode,String custCode, String custName,String custId,String custCertTypeId,String custCertNo,[\r\n]
			String contName, String contPhone1,String contMobile1,String jstMobile,[\r\n]
			String acctName,[\r\n]
			String vipProp,String userName,[\r\n]
			String resEquNo1,String resEquNo2,String resEquNo3,String resEquNo4,String resEquNo5,String resEquNo6,int $STARTROWINDEX,int $ENDROWINDEX,String status,String isHost,String isTenant,String ownOrgId,String custTypeTemp,String loginName)' implservice_countmethod='queryCommonCustCount(String operId,String opLoginOrganizeId,String stdAddrId, String doorName,[\r\n]
			String oldCustCode,String custCode, String custName,String custId,String custCertTypeId,String custCertNo,[\r\n]
			String contName, String contPhone1,String contMobile1,String jstMobile,[\r\n]
			String acctName,[\r\n]
			String vipProp,String userName,[\r\n]
			String resEquNo1,String resEquNo2,String resEquNo3,String resEquNo4,String resEquNo5,String resEquNo6,[\r\n]
			String status,String isHost,String isTenant,String ownOrgId,String custTypeTemp ,String loginName)' [\r\n]
multiselect='false' isquerycount='TRUE' width='740px' height='160' pagesize='1000' >[\r\n]
<col fieldname='CUST_ADDR_ID' visible='false' />[\r\n]
<col fieldname='STD_ADDR_ID' visible='false' />[\r\n]
<col fieldname='CUST_ID' visible='false' />[\r\n]
<col fieldname='HOST_CUST_ID' visible='false' />[\r\n]
<col fieldname='OWN_ORG_ID' visible='false' />[\r\n]
<col fieldname='OWN_CORP_ORG_ID' visible='false' />[\r\n]
<col fieldname='TRANSFER_STATUS' visible='false' />[\r\n]
<col fieldname='STD_ADDR_NAME' width='200'  />[\r\n]
<col fieldname='DOOR_NAME' width='90'  />[\r\n]
<col fieldname='AUDIT_FLAG' width='90'  />[\r\n]
<col fieldname='CUST_STATUS'  />[\r\n]
<col fieldname='CUST_CODE'  />[\r\n]
<col fieldname='CUST_NAME'  />[\r\n]
<col fieldname='CUST_LEVEL'  />[\r\n]
<col fieldname='CUST_TYPE'  />[\r\n]
<col fieldname='CUST_CERT_TYPE'  />[\r\n]
<col fieldname='CUST_CERT_NO' width='140'  />[\r\n]
<col fieldname='IS_HOST' width='140'  />[\r\n]
</TableInfo>
{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{|}post
{@}{_cfl}cqbs_list_demo.htm
{@}{_shw}[var_res]
{@}{_shw}ready go....
{@}{cap}共 {?} 页
{@}{shw}  总页数：[=]0[=]
{@}{cap}newGridPK='{?}'
{@}{shw}  PK值：[=]1[=]
{@}{sql}DB_Conn_200_CqBoss{|}DB_SQL_200_CqBoss_UserContactInfo_Add{||}{a}{-}[var_res]
                                                                      {||}{b}{-}[tagid]
                                                                      {||}{c}{-}0
                                                                      {||}{d}{-}[=]1[=]
                                                                      {||}{e}{-}[=]0[=]
                                                                      {||}{f}{-}1
                                                                      {||}{g}{-}[taskid]
                          {|}1
                          {|}[sys_var_res]
{@}{sql}DB_Conn_200_CqBoss{|}update tasktagsnatch set pgidx=1 where pgidx=0 and id=[taskid];{|}1{|}[=]1[=]
{@}{shw} step-1 : save usercontactinfo page no.1 ok. 
{@}{shw} step-1 : waite 30 sec.
{@}{wtm}30000
                                           
{@}{for}[pgidx]{||}[=]0[=]{|}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=turnpage&pk=[=]1[=]&newpage=[foridx]{\|}
                            {\|}multipart/form-data{\|\|}GB2312{\|\|}gzip, deflate{\|\|}false{\|}post
                       {\@}{sql}DB_Conn_200_CqBoss{\|}DB_SQL_200_CqBoss_UserContactInfo_Add{\|\|}{a}{-}[var_res]
                                                                      {\|\|}{b}{-}[tagid]
                                                                      {\|\|}{c}{-}0
                                                                      {\|\|}{d}{-}[=]1[=]
                                                                      {\|\|}{e}{-}[=]0[=]
                                                                      {\|\|}{f}{-}[foridx]
                                                                      {\|\|}{g}{-}[taskid]
                                                  {\|}1
                                                  {\|}[sys_var_res]                
                       {\@}{sql}DB_Conn_200_CqBoss{\|}update tasktagsnatch set pgidx=[foridx] where id=[taskid];{\|}1{\|}[=]1[=]
                       {\@}{shw} step-1 : save usercontactinfo page no.[foridx] ok.
                       {\@}{shw} step-1 : waite 30 sec.
                       {\@}{wtm}30000

{@}{sql}DB_Conn_200_CqBoss{|}update tasktagsnatch set done=1 where id=[taskid];{|}1{|}[=]1[=]
{@}{clr}