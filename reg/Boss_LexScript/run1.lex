功能：对标签名称加密
{@}{cug}http://boss.cqccn.com:8888/aicas/login{|}username=407390&password=56CC3FAA8DC8D4D4A13DC1F212E1DEE596797BD66E370AC5&service=http%3A%2F%2Fboss.cqccn.com%3A18081%2Fboss_web%2Fwebframe%2Fshdesktopui%2Fimages%2Ficon_login.png&ai_param_ip=192.168.0.23&ai_param_hostname=DESKTOD&ai_param_mac=64%3ABB%4B6A%3A2B%3AD3%3AA2{|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}false{|}post

{@}{dbr}DB_Conn_200_CqBoss
        {|}select id,tagid,EncTagTitle,(pgidx+1) as pgidx from tasktagsnatch where done=0 order by id limit 300{||}[Tag]{-}0
        {|}1
        {|}reg/boss/run1-1.lex{|||}utf-8{||}[tagid]{-}tagid{||}[tagtitle]{-}EncTagTitle{||}[taskid]{-}id{||}[pgidx]{-}pgidx
        {|}1
{@}{clr}
{@}{-cal}[exit]