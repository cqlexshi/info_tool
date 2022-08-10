功能：设置可以抓取地址Url
step1.从数据库里读取数据，地址
step2.加密地址，形成新的URL，传输到下一步，执行抓取任务
{@}{dbr}DB_Conn_200_CqBoss
        {|}DB_SQL_200_CqBoss_HouseAddr_Slt{||}[Tag]{-}0
        {|}1
        {|}{\@}{jsr}des.js{||}utf-8{|}1{|}strEnc{||}addr,qiu7Wx,,
           {\@}{lex}reg\run1-1.lex{|||}utf-8{||}[addr]{-}[=]0[=]{||}[addrid]{-}id
