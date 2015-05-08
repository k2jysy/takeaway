<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>小票打印模板</title><style >body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, blockquote, p,table, tr,td,caption{ margin : 0; padding : 0; }
body { font : 12px/1.3 'Microsoft YaHei'; color : #413c36; background : #ffffff url(images/bodybg.gif) repeat-x 0% 30px; }
ul, ol, li, em, dl, dt, dd, p, cite { list-style : none; font-style : normal; }
h4, h5, h6 { font-weight : 100; font-size : 13px; }
h1, h2, h3 { font-weight : 800; font-size : 16px; text-align: center;}
a { color : #0D61A8; }
a:hover { color : #006699; }
a, a:hover { text-decoration : none; }
input, select, button, textarea { vertical-align : middle; font-family : 'Microsoft YaHei'; }
img, a img { vertical-align : middle; border : none; }
blockquote, pre { padding : 5px 10px 5px 40px; margin : 10px 0; background : #f7f7f7 url(images/quotebg.gif) no-repeat 10px 10px; border : 1px solid #ebebeb; color : #e94d00; font-size : 12px; }
table { border-collapse : collapse; border-spacing : 0; width : 100%; }
.en { font-family : Arial, Helvetica, Sans-serif; }
.tip { padding : 5px 0 20px; }
.fixed, #container, .post-txt, .post-txt p, .widget ul, .coms-list dl { overflow : hidden;zoom:1 }
.hide, .widget_search form { display : none; }
.container{width:200px;}
.container p{line-height:16px;}
.container tr{height:14px;}
.container table{margin:0px;}
.container h3{margin-top:4px;}
.spanleft{width:90px;float:left;overflow:hidden;}
.spanright{width:80px;float:left;overflow:hidden;}
</style></head><body><div class="container"><h3><?php echo ($orderdetail["shopname"]); ?></h3><p>日期:<?php echo (date("Y-m-d H:i",$orderdetail["order_endtime"])); ?></p><p>单号：<?php echo ($orderdetail["oid"]); ?></p><div style="clear:both"></div><hr><table border="0"><tr><td style="width:80px"><strong>菜名</strong></td><td style="width:45px"><strong>单价</strong></td><td style="width:25px"><strong>数量</strong></td><td ><strong>总额</strong></td><?php if(is_array($orderlist["Foodorderext"])): $i = 0; $__LIST__ = $orderlist["Foodorderext"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?></tr><tr><td><?php echo ($vo["fname"]); ?></td><td><?php echo ($vo["fprice"]); ?></td><td><?php echo ($vo["fcount"]); ?></td><td><?php echo ($vo["prices"]); ?></td></tr><?php endforeach; endif; else: echo "" ;endif; ?></table><hr><p><div class="spanleft">数量：<?php echo ($orderdetail["ordercount"]); ?></div><div class="spanright">配送费：<?php echo ($orderdetail["pay"]); ?></div><div style="clear:both"></div></p><p><div class="spanleft">总额：<?php echo ($orderdetail["orderprice"]); ?></div><div class="spanright"></div><div style="clear:both"></div></p><p>姓名：<?php echo ($orderdetail["oman"]); ?></p><p>手机：<?php echo ($orderdetail["otel"]); ?></p><p>地址：<?php echo ($orderdetail["oaddress"]); ?></p><p>时间：<?php echo (substr($orderdetail["order_dtime"],0,16)); ?></p><p>订单备注：<?php echo ($orderdetail["morecontent"]); ?></p></div></body></html>