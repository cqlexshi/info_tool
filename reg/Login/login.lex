功能：对标签名称加密
{@}往期开奖
Model=Game&Action=GetHistoryWinCode&Id=1&Num=5

{@}历史购买记录
Model=User&Action=GetHistoryBuy&Num=10

{@}输赢总览
Model=User&Action=get_win_overview

{@}当前期
Model=Game&Action=GetTheIssueAndTime&Id=14

{@}指定期数据
Model=Game&Action=GetLastWinCode&Id=14&Issue=1661100&Sleep=10

{@}开奖状态
Model=Game&Action=getWinCodeStatus&Sleep=30

{@}指定期数开奖结果
Model=Game&Action=GetLastWinCode&Id=1&Issue=20160928-050&Sleep=10

{@}用户信息
Model=User&Action=GetUserInfo&r=no


{@}开奖后执行的
Model=Game&Action=GetLastWinCode&Id=1&Issue=20160928-051&Sleep=10

{@}登录
{@}{cug}http://www.le806.com/?{|}Action=CheckUserLogin&username=ss88888&password=123456a&verification=xdqa{|}application/x-www-form-urlencoded{||}utf-8{||}text/html, application/xhtml+xml, image/jxr, */*{||}true{||}www.le806.com{||}PHPSESSID=o65bf1uukpj8kemnk48aouurl7{||}www.163.com{||}Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko{||}Accept-Language=zh-cn; Accept-Encoding=gzip, deflate{|}post
{@}投
{@}{-cug}http://www.le806.com/?Model=Game&Action=AddBuy&Id=1&Issue=20160928-051&BuyCode=1001002%2B2%7C3%7C4%7C5%7C6%2B1&BuyChase=&IsChaseCode=0&Multiple=0.001&Rebate=0.00&TheTotalAmount=0.0010{|}{|}application/x-www-form-urlencoded{||}utf-8{||}gzip, deflate{||}false{||}www.le806.com{||}PHPSESSID=57s1cst3f3td523iqqd3t5mb07; amount_mode=0.001; multiple=1{|}post
{@}{shw}[res]
{@}下期
{@}{-cug}http://www.le806.com/?Model=Game&Action=GetTheIssueAndTime&Id=1{|}{|}application/x-www-form-urlencoded{||}utf-8{||}gzip, deflate{||}false{||}www.le806.com{||}PHPSESSID{=}57s1cst3f3td523iqqd3t5mb07{|||}amount_mode{=}0.001{|||}multiple{=}1{|}post
{@}{-shw}[res]

