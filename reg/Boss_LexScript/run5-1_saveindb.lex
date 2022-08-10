保存数据到数据库中
{@}{-shw}no.[cust_id]  txt=[data]
{@}{ral}[data]
{@}{cap}"G-TableBody">{?}</tbody>
{@}{ral}[=]0[=]
{@}{clr}
{@}{cap}<tr {?}</tr>
{@}{-for}0{||}0{||}1{|}{shw}no.[foridx]  txt=[forres]
{@}{for}0{||}0{||}1{|}{lex}reg\boss\run5-2_saveindb.lex{\|\|}[tr_idx]{-}[foridx]{\|\|\|}[tr_data]{-}[forres]{\|\|\|}[rd_cust_id]{-}[cust_id]{\|}utf-8
