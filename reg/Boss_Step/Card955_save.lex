功能：save 995**** card
{@}{for}[PgIdx]{||}2700000{|}{nfm}9950000000000000{\|}[foridx]
														 {\@}{cul}http://192.168.9.74/bhms/webservice/getUserInfo.action?cardType=U&card=[var_res]
														 {\@}{sql}DB_Conn_99_CqBoss{\|}insert into Card995Info(card,info,intime) values([foridx],'[var_res]',UNIX_TIMESTAMP(NOW())); 
														 																update Card995PgIdx set pgidx=[foridx]+1 where id=[ID];
                                                        {\|}1
             								 {\@}{shw}save card [foridx] ok.
             								 {\@}{-wtm}1
             							{|}10
{@}{cal}[exit]