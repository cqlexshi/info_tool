功能：card order
{@}{shw}===========开始执行 Card Order...===========
{@}{cug}http://boss.cqccn.com:8888/aicas/login{|}username=407390&password=56CC3FAA8DC8D4D4A13DC1F212E1DEE596797BD66E370AC5&service=http%3A%2F%2Fboss.cqccn.com%3A18081%2Fboss_web%2Fwebframe%2Fshdesktopui%2Fimages%2Ficon_login.png&ai_param_ip=192.168.0.23&ai_param_hostname=DESKTOD&ai_param_mac=64%3ABB%4B6A%3A2B%3AD3%3AA2{|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}false{|}post{|}reg/boss_step/cqboss_cookie
{@}{ifc}[var_res]{||}={||}{|}{shw}服务器连接不成功，退出程序,等待下次周期执行。{\@}{end}{|}{shw}已成功登录...
{@}{dbr}DB_Conn_CqBoss_online
        {|}select id, dbtitle, '[title1]' as title,cust_id,cust_id_jm,cust_addr_id,tagid,own_corp_org_id,acct_id from taskcardorder where Done=0 limit 300{||}[Tag]{-}0
        {|}1
        {|}reg/boss_step/UserCardOrder_Get.lex{|||}utf-8{||}[t4_title]{-}title
        																					{||}[tagid4]{-}tagid
        																				  {||}[dbtitle4]{-}dbtitle
        																				  {||}[t4_cust_id_jm]{-}cust_id_jm
        																				  {||}[t4_cust_id]{-}cust_id
        																				  {||}[t4_cust_addr_id]{-}cust_addr_id
        																				  {||}[t4_own_corp_org_id]{-}own_corp_org_id
        																				  {||}[t4_id]{-}id
        																				  {||}[t4_acct_id]{-}acct_id
        {|}cust_id,cust_id_jm,cust_addr_id,title,dbtitle,tagid,own_corp_org_id,id,acct_id
        {|}30
{@}{shw}Card Order save end.
{@}{clr}