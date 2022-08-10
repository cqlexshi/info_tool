保存Card的订购信息
{@}{-shw}no.[t8_cust_id]  txt=[t8_data]
{@}{ral}[t8_data]
{@}{rep}>&nbsp;00:00:00{-} 
{@}{rep}&nbsp;{-} 
{@}{rep}height='20' I='{-}height='20' tt=' 
{@}{rep}'{-}"
{@}{rep}""{-}"null"
{@}{rep}" >{-}" I="0">
{@}{rep}-TD">{-}-TD I="0">
{@}{rep}</td></td>{-}</td>
{@}{rep}/>{-}>0</td>
{@}{ifc}[var_res]{||}={||}[forres]{|}{end}{|}
{@}{-shw}=====[t8_idx_sub]=======[var_res]


{@}{cal}[t8_cust_id]
{@}{cap} SRVPKG_INST_ID="{?}"
{@}{cap} OPER_STATE="{?}"

{@}{cap}>{?}<
{@}{cap} I="{?}"

{@}{-shw}0.cust_id=[=]0[=]
				1.SRVPKG_INST_ID=[=]1[=]
				2.OPER_STATE=[=]2[=]
				
				3.OFFER_INST_TITLE=[=]3[=]
				4.SRVPKG_TITLE=[=]4[=]
        5.VALID_DATE=[=]5[=]
        6.EXPIRE_DATE=[=]6[=]
        7.STATE_TITLE=[=]7[=]
        8.ORG_TITLE=[=]8[=]
        9.OP_TITLE=[=]9[=]
        10.VALID_TYPE_TITLE=[=]10[=]
        11.CREATE_DATE=[=]11[=]
        12.OS_STATUS=[=]12[=]
        11.DESCRIPTION=[=]13[=]
        
        3_14.OFFER_INST_ID=[=]14[=]
				4_15.SRVPKG_ID=[=]15[=]
       _5_16.VALID_DATE_ID=[=]16[=]
       _6_17.EXPIRE_DATE_ID=[=]17[=]
        7_18.STATE_ID=[=]18[=]
        8_19.ORG_ID=[=]19[=]
        9_20.OP_ID=[=]20[=]
        10_21.VALID_TYPE_ID=[=]21[=]
       _11_22.CREATE_DATE_ID=[=]22[=]
       _12_23.OS_STATUS_ID=[=]23[=]
       _11_24.DESCRIPTION_ID=[=]24[=]
        
        
{@}{-shw}REPLACE INTO usercardorder[dbtitle8](Cust_Id,CUST_ADDR_ID,PRODUCT_INSTANCE_ID,SRVPKG_INST_ID,OPER_STATE,OFFER_INST_TITLE,SRVPKG_TITLE,VALID_DATE,EXPIRE_DATE,STATE_TITLE,ORG_TITLE, OP_TITLE,VALID_TYPE_TITLE,CREATE_DATE, OS_STATUS,DESCRIPTION,OFFER_INST_ID,SRVPKG_ID,STATE_ID,  ORG_ID,   OP_ID,VALID_TYPE_ID,Acct_Id, tagid6,InTime)
                        VALUES([=]0[=],[t8_cust_addr_id],           [t8_product_instance_id],       [=]1[=],   [=]2[=],       '[=]3[=]',   '[=]4[=]', '[=]5[=]',  '[=]6[=]',  '[=]7[=]','[=]8[=]','[=]9[=]',      '[=]10[=]', '[=]11[=]','[=]12[=]', '[=]13[=]',     [=]14[=], [=]15[=],[=]18[=],[=]19[=],[=]20[=],     [=]21[=],[t8_acct_id],[tagid8],UNIX_TIMESTAMP(NOW())); 
{@}{sql}DB_Conn_CqBoss_online{|}REPLACE INTO usercardorder[dbtitle8](Cust_Id,CUST_ADDR_ID,PRODUCT_INSTANCE_ID,SRVPKG_INST_ID,OPER_STATE,OFFER_INST_TITLE,SRVPKG_TITLE,VALID_DATE,EXPIRE_DATE,STATE_TITLE,ORG_TITLE, OP_TITLE,VALID_TYPE_TITLE,CREATE_DATE, OS_STATUS,DESCRIPTION,OFFER_INST_ID,SRVPKG_ID,STATE_ID,  ORG_ID,   OP_ID,VALID_TYPE_ID,Acct_Id,   tagid,InTime)
                                                    VALUES([=]0[=],   [addr_id8],          [pi_id8],       [=]1[=],   [=]2[=],       '[=]3[=]',   '[=]4[=]', '[=]5[=]',  '[=]6[=]',  '[=]7[=]','[=]8[=]','[=]9[=]',      '[=]10[=]', '[=]11[=]','[=]12[=]', '[=]13[=]',     [=]14[=], [=]15[=],[=]18[=],[=]19[=],[=]20[=],    [=]21[=],[at_id8],[tag_id8],UNIX_TIMESTAMP(NOW()));                     
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
																																				{||}[15]{-}[=]15[=]
																																				{||}[18]{-}[=]18[=]
																																				{||}[19]{-}[=]19[=]
																																				{||}[20]{-}[=]20[=]
																																				{||}[21]{-}[=]21[=]
																																				{||}[addr_id8]{-}[t8_cust_addr_id]
																																				{||}[tag_id8]{-}[tagid8]
																																				{||}[pi_id8]{-}[t8_product_instance_id]
																																				{||}[at_id8]{-}[t8_acct_id]
					{|}1{|}[=]3[=]
{@}{clr}