保存数据到数据库中
{@}{-hw}no.[tr_idx]  txt=[tr_data]
{@}{ral}[tr_data]
{@}{rep}""{-}"null"
{@}{rep} />{-} >null</td>

{@}{cal}[rd_cust_id]

{@}{cap} I='{?}' C
{@}{cap} CONT_ID="{?}"

{@}{cap}>{?}<
{@}{-shw}[res]
{@}{-shw}1.cust_id=[=]0[=]
				2.I=[=]1[=]
        3.CONT_ID=[=]2[=]
        4.CONT_NAME=[=]3[=]
        5.CONT_DFLT_MODE=[=]4[=]
        6.CONT_MOBILE1=[=]5[=]
        7.CONT_MOBILE2=[=]6[=]
        8.CONT_PHONE1=[=]7[=]
        9.CONT_PHONE2=[=]8[=]
{@}{-shw}INSERT IGNORE INTO UserTel(Cust_Id,I_ID,CONT_ID,CONT_NAME,CONT_DFLT_MODE,CONT_MOBILE1,CONT_MOBILE2,CONT_PHONE1,CONT_PHONE2,InTime) VALUES([=]0[=],[=]1[=],[=]2[=],'[=]3[=]','[=]4[=]','[=]5[=]','[=]6[=]','[=]7[=]','[=]8[=]',UNIX_TIMESTAMP(NOW())); 
{@}{sql}DB_Conn_200_CqBoss{|}DB_SQL_200_CqBoss_UserTel_Add{||}[0]{-}[=]0[=]{||}[1]{-}[=]1[=]{||}[2]{-}[=]2[=]{||}[3]{-}[=]3[=]{||}[4]{-}[=]4[=]{||}[5]{-}[=]5[=]{||}[6]{-}[=]6[=]{||}[7]{-}[=]7[=]{||}[8]{-}[=]8[=]{|}1{|}[=]2[=]
{@}{shw} step-5 : save tel rd no.[rd_cust_id] ok.  