保存用户的姓名、电话
{@}{-shw}no.[t5_idx_sub]  txt=[t5_data]
{@}{ral}[t5_data]
{@}{rep}""{-}"null"
{@}{rep} />{-} >null</td>

{@}{cal}[t5_cust_addr_id]

{@}{cap} I='{?}' C
{@}{cap} CONT_ID="{?}"

{@}{cap}>{?}<

{@}{-shw}0.cust_addr_id=[=]0[=]
				1.cust_id=[t5_cust_id]
				2.I=[=]1[=]
        3.CONT_ID=[=]2[=]
        4.CONT_NAME=[=]3[=]
        5.CONT_DFLT_MODE=[=]4[=]
        6.CONT_MOBILE1=[=]5[=]
        7.CONT_MOBILE2=[=]6[=]
        8.CONT_PHONE1=[=]7[=]
        9.CONT_PHONE2=[=]8[=]
{@}{-shw}                        REPLACE INTO UserTel[dbtitle5](Cust_Id,Cust_Addr_Id,I_ID,CONT_ID,CONT_NAME,CONT_DFLT_MODE,CONT_MOBILE1,CONT_MOBILE2,CONT_PHONE1,CONT_PHONE2,tagid,InTime) VALUES([t5_cust_id],[=]0[=],[=]1[=],[=]2[=],'[=]3[=]','[=]4[=]','[=]5[=]','[=]6[=]','[=]7[=]','[=]8[=]',[tagid5],UNIX_TIMESTAMP(NOW())); 
{@}{sql}DB_Conn_CqBoss_online{|}REPLACE INTO UserTel[dbtitle5](Cust_Id,Cust_Addr_Id,I_ID,CONT_ID,CONT_NAME,CONT_DFLT_MODE,CONT_MOBILE1,CONT_MOBILE2,CONT_PHONE1,CONT_PHONE2,tagid,InTime) VALUES([t5_cust_id],[0],[1],[2],'[3]','[4]','[5]','[6]','[7]','[8]',[tagid5],UNIX_TIMESTAMP(NOW()));
														{||}[0]{-}[=]0[=]
														{||}[1]{-}[=]1[=]
														{||}[2]{-}[=]2[=]
														{||}[3]{-}[=]3[=]
														{||}[4]{-}[=]4[=]
														{||}[5]{-}[=]5[=]
														{||}[6]{-}[=]6[=]
														{||}[7]{-}[=]7[=]
														{||}[8]{-}[=]8[=]
					{|}1{|}[=]2[=]
