功能：用户CardOrder
{@}{dbr}DB_Conn_CqBoss_online
        {|}SELECT id, dbtitle, dbtitle as title,cust_id,cust_id_jm,cust_addr_id,tagid,own_corp_org_id,PRODUCT_INSTANCE_ID,acct_id from taskcardorder where Done=0 limit 300{||}[Tag]{-}0
        {|}1
        {|}reg/boss_step/UserCardOrder_Get.lex{|||}utf-8{||}[t6_cust_id]{-}Cust_Id
        																								{||}[t6_product_instance_id]{-}PRODUCT_INSTANCE_ID
        																								{||}[t6_cust_addr_id]{-}cust_addr_id
        																								{||}[t6_idx]{-}cust_id
        																								{||}[tagid6]{-}tagid
        																								{||}[t6_title]{-}title
        																								{||}[t6_idx]{-}[dbridx]
        																								{||}[t6_res]{-}[dbrres]
        																								{||}[dbtitle6]{-}dbtitle
			        																				  {||}[t6_cust_id_jm]{-}cust_id_jm
			        																				  {||}[t6_own_corp_org_id]{-}own_corp_org_id
			        																				  {||}[t6_id]{-}id
			        																				  {||}[t6_acct_id]{-}acct_id
{@}{shw}save cardorder end.
{@}{clr}