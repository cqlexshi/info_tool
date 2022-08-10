功能：从数据库里读取数据，并且每条数据执行lex文件
{@}{dbr}DB_Conn_200_CqBoss
        {|}SELECT * FROM  UserTelInfo WHERE Done=0 limit 1000;{||}[Tag]{-}0
        {|}1
        {|}reg\boss\run5-1_saveindb.lex{|||}utf-8{||}[cust_id]{-}cust_id{||}[data]{-}info

{@}{-cfl}telinfo.txt
{@}{-lex}reg\boss\run5-1_saveindb.lex{||}[cust_id]{-}111111111{|||}[data]{-}[sys_var_res]{|}utf-8
        