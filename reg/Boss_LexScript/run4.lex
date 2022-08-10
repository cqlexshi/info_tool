功能：从数据库里读取用户数据，并从BOSS里获取用户的电话信息
{@}{cug}http://boss.cqccn.com:8888/aicas/login{|}username=407390&password=56CC3FAA8DC8D4D4A13DC1F212E1DEE596797BD66E370AC5&service=http%3A%2F%2Fboss.cqccn.com%3A18081%2Fboss_web%2Fwebframe%2Fshdesktopui%2Fimages%2Ficon_login.png&ai_param_ip=192.168.0.23&ai_param_hostname=DESKTOD&ai_param_mac=64%3ABB%4B6A%3A2B%3AD3%3AA2{|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}false{|}post
{@}{dbr}DB_Conn_200_CqBoss
        {|}DB_SQL_200_CqBoss_UserContact_Slt_CustIdJm{||}[Tag]{-}0
        {|}1
        {|}
        {\@}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=refresh&pk=-1&condition=[cust_id_jm]&tmpPercentWidth=758&localcache=table&url_source=XMLHTTP
						{\|}<TableInfo [\r\n]
tableid="tblContactInfo" setname="com.asiainfo.boss.customer.cust.web.SETCMCustContactInfo" tablemodel="com.ai.appframe2.web.datamodel.MethodModelForService" implservice_name="com.asiainfo.boss.customer.cust.service.interfaces.ICMCustomerSV" implservice_querymethod="queryCustContactInfoByCustIdEnCode(String custId)" [\r\n]
multiselect="true" isquerycount="TRUE" width="100%" height="40" pagesize="2" footdisplay="false" >[\r\n]
<col fieldname='CONT_ID' visible='false' />[\r\n]
<col fieldname="CONT_NAME" width="150"  />[\r\n]
<col fieldname="CONT_DFLT_MODE"  />[\r\n]
<col fieldname="CONT_MOBILE1"  />[\r\n]
<col fieldname="CONT_MOBILE2"  />[\r\n]
<col fieldname="CONT_PHONE1"  />[\r\n]
<col fieldname="CONT_PHONE2"  />[\r\n]
</TableInfo>
{\|}multipart/form-data{\|\|}GB2312{\|\|}gzip, deflate{\|\|}false{\|}post
{\@}{sql}DB_Conn_200_CqBoss{\|}DB_SQL_200_CqBoss_UserTelInfo_Add{\|\|}{a}{-}[cust_id]
                                                                      {\|\|}{b}{-}[cust_id_jm]
                                                                      {\|\|}{c}{-}[sys_var_res]	
                           {\|}1
                           {\|}[sys_var_res]
{\@}{shw} step-4 : get tel-user info : [cust_id] ok.
{\@}{shw} step-4 : waite 2 sec.
{\@}{wtm}2000
{||}[cust_id_jm]{-}cust_id_jm{||}[cust_id]{-}cust_id


