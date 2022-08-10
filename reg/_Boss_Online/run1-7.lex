保存Card列表中各卡的金额
{@}{-shw}no.[t7_idx]  txt=[t7_data]
{@}{ral}[t7_data]

{@}{cal}[t7_cust_addr_id]
{@}{cap} SERV_ID="{?}"
{@}{cap} SERVICEBLCAMOUNT="{?}"
{@}{cap} SERVICEBILLAMOUNT="{?}"


{@}{-shw}==========[t7_idx_sub]============INSERT INTO UserCard[dbtitle7](CUST_ID,CUST_ADDR_ID,I,PRODUCT_INSTANCE_ID,TOTALBLCAMOUNT,TOTALBILLAMOUNT,tagid,InTime) VALUES ([t7_cust_id],[=]0[=],'[=]1[=]'+0,'[=]1[=]',[=]2[=],[=]3[=],[tagid7],UNIX_TIMESTAMP(NOW())) ON DUPLICATE KEY UPDATE TOTALBLCAMOUNT=[=]2[=],TOTALBILLAMOUNT=[=]3[=];
{@}{sql}DB_Conn_CqBoss_online{|}INSERT INTO UserCard[dbtitle7](CUST_ID,CUST_ADDR_ID,I,PRODUCT_INSTANCE_ID,TOTALBLCAMOUNT,TOTALBILLAMOUNT,tagid,InTime) VALUES ([t7_cust_id],[=]0[=],'[=]1[=]'+0,'[=]1[=]',[=]2[=],[=]3[=],[tagid7],UNIX_TIMESTAMP(NOW())) ON DUPLICATE KEY UPDATE TOTALBLCAMOUNT=[=]2[=], TOTALBILLAMOUNT=[=]3[=];
															{|}1{|}[=]2[=]
{@}{-shw} step1: [t5_title]. save  ok.  