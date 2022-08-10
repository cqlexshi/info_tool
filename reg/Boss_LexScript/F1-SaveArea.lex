功能：采集资讯

{@}{cfl}reg/Boss/res/南岸小区.txt
{@}{cap}>{?}<
{@}{for}0{||}0{||}1{|}{sql}DB_Conn_loc_Shouxi{\|}CALL sp_area_ins([forres]);
                                                  {\|}1
                                                  {\|}[forres]
                 {\@}{shw}[foridx].[forres]


{@}{shw}save ok.