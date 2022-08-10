功能：用户Card
{@}{dbr}DB_Conn_CqBoss_online
        {|}select id, dbtitle, dbtitle as title,cust_id,cust_id_jm,cust_addr_id,tagid,own_corp_org_id from taskcard where Done=0 limit 300{||}[Tag]{-}0
        {|}1
        {|}reg/boss_step/UserCard_Get.lex{|||}utf-8{||}[t4_title]{-}title
        																					{||}[tagid4]{-}tagid
        																				  {||}[dbtitle4]{-}dbtitle
        																				  {||}[t4_cust_id_jm]{-}cust_id_jm
        																				  {||}[t4_cust_id]{-}cust_id
        																				  {||}[t4_cust_addr_id]{-}cust_addr_id
        																				  {||}[t4_own_corp_org_id]{-}own_corp_org_id
        																				  {||}[t4_id]{-}id
        {|}30
{@}{shw}save card  end.
{@}{clr}