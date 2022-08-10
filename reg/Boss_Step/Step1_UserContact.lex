功能：获取用户基本信息
{@}{shw}开始处理 UserContact...
{@}{dbr}DB_Conn_CqBoss_online
        {|}select id,title,dbtitle,done from task where Done=0 order by id limit 1{||}[Tag]{-}0
        {|}1
        {|}reg/Boss_Step/UserContact_Get.lex{|||}utf-8{||}[title]{-}Title{||}[tagid]{-}id{||}[dbtitle1]{-}dbtitle
{@}{shw} work UserContact end.
{@}{clr}