功能：顺序并抓 995**** card
{@}{dbr}DB_Conn_99_CqBoss
        {|}select PgIdx from Card995PgIdx where id=1{||}[Tag]{-}0
        {|}1
        {|}{cal}[PgIdx]{||}[PgIdx]{-}PgIdx
{@}{shw}start no: [=]0[=]
{@}{-for}[=]0[=]{||}2609398{|}{nfm}9950000000000000{\|}[foridx] 
														 {\@}{cul}http://192.168.9.74/bhms/webservice/getUserInfo.action?cardType=U&card=[sys_var_res]      
														 {\@}{sql}DB_Conn_200_CqBoss{\|}insert into Card995Info(card,info,intime) values([foridx],'[sys_var_res]',UNIX_TIMESTAMP(NOW())); 
														 																update Card995PgIdx set pgidx=[foridx]+1 where id=1;
                                                        {\|}1
             								 {\@}{shw} 1.save card.[foridx] ok.
             								 {\@}{wtm}100
             							{|}4000
{@}{cal}[exit]