保存Card列表中和卡的信息，但不包括金额
{@}{-shw}no.[tr_idx]  txt=[t6_data]
{@}{ral}[t6_data]
{@}{rep}""{-}"null"
{@}{rep}/>{-}>null</td>

{@}{cal}[t6_cust_id]
{@}{cap} I='{?}' K
{@}{cap} KEY_NUM_TYPE_CODE="{?}"
{@}{cap} KEY_NUM="{?}"
{@}{cap} REGION_ID="{?}"
{@}{cap} CORP_ORG_ID="{?}"

{@}{cap}>{?}<

{@}{-shw}1.cust_id=[=]0[=]
				2.I=[=]1[=]
        3.KEY_NUM_TYPE_CODE=[=]2[=]
        4.KEY_NUM=[=]3[=]
        5.REGION_ID=[=]4[=]
        6.CORP_ORG_ID=[=]5[=]
        
        7.null=[=]6[=]
        7.PRODUCT_INSTANCE_ID=[=]7[=]
        8.KEY_NUM_TYPE_CODE_DESC=[=]8[=]
        9.IF_IS_MAIN=[=]9[=]
        10.ACC_NBR=[=]10[=]
        11.TOTALBLCAMOUNT=[=]11[=]
        12.TOTALBILLAMOUNT=[=]12[=]
        13.PRODUCT_INSTANCE_STATE=[=]13[=]
        14.STATE_DATE=[=]14[=]
        
        
{@}{-shw}REPLACE INTO UserCard[dbtitle6](Cust_Id,
                                        CUST_ADDR_ID,
																			  I,
																				KEY_NUM_TYPE_CODE,
																				KEY_NUM,
																				REGION_ID,
																				CORP_ORG_ID,
																				PRODUCT_INSTANCE_ID,
																				KEY_NUM_TYPE_CODE_DESC,
																				IF_IS_MAIN,
																				ACC_NBR,
																				TOTALBLCAMOUNT,
																				TOTALBILLAMOUNT,
																				PRODUCT_INSTANCE_STATE,
																				STATE_DATE,
																				tagid,
																				InTime)  VALUES([=]0[=],[t6_cust_addr_id],[=][1[=],'[=]2[=]','[=]3[=]',[=]4[=],[=]5[=],'[=]7[=]','[=]8[=]','[=]9[=]','[=]10[=]',[=]11[=],[=]12[=],'[=]13[=]','[=]14[=]',[tagid6],UNIX_TIMESTAMP(NOW()));

{@}{sql}DB_Conn_CqBoss_online{|}REPLACE INTO UserCard[dbtitle6](Cust_Id,
                                                        CUST_ADDR_ID,
																											  I,
																												KEY_NUM_TYPE_CODE,
																												KEY_NUM,
																												REGION_ID,
																												CORP_ORG_ID,
																												PRODUCT_INSTANCE_ID,
																												KEY_NUM_TYPE_CODE_DESC,
																												IF_IS_MAIN,
																												ACC_NBR,
																												TOTALBLCAMOUNT,
																												TOTALBILLAMOUNT,
																												PRODUCT_INSTANCE_STATE,
																												STATE_DATE,
																												ACCT_ID,
																												tagid,
																												InTime)  VALUES([0],[15],[1],'[2]','[3]',[4],[5],[7],'[8]','[9]','[10]',[11],[12],'[13]','[14]',[17],[16],UNIX_TIMESTAMP(NOW()));
															 INSERT	INTO   TaskCardOrder(dbtitle,cust_id,cust_id_jm,cust_addr_id,product_instance_id,own_corp_org_id,acct_id,tagid) values('[dbtitle6]',[0],'',[15],[7],[5],[17],[16]);
															 INSERT	INTO       TaskMoney(dbtitle,cust_id,cust_id_jm,cust_addr_id,product_instance_id,own_corp_org_id,acct_id,tagid) values('[dbtitle6]',[0],'',[15],[7],[5],[17],[16]);
																																				{||}[0]{-}[=]0[=]
																																				{||}[1]{-}[=]1[=]
																																				{||}[2]{-}[=]2[=]
																																				{||}[3]{-}[=]3[=]
																																				{||}[4]{-}[=]4[=]
																																				{||}[5]{-}[=]5[=]
																																				{||}[6]{-}[=]6[=]
																																				{||}[7]{-}[=]7[=]
																																				{||}[8]{-}[=]8[=]
																																				{||}[9]{-}[=]9[=]
																																				{||}[10]{-}[=]10[=]
																																				{||}[11]{-}[=]11[=]
																																				{||}[12]{-}[=]12[=]
																																				{||}[13]{-}[=]13[=]
																																				{||}[14]{-}[=]14[=]
																																				{||}[15]{-}[t6_cust_addr_id]
																																				{||}[16]{-}[tagid6]
																																				{||}[17]{-}[t6_acct_id]
					{|}1{|}[=]7[=]