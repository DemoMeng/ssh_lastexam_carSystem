<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add</title>
<style type="text/css">
		#div1{
		margin-left:350px;
		width: 800px;
		height:800px;
		display:inline-block;
		}

</style>
</head>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(function(){
		/* 添加一个是否进行删除的脚本交互框 */
		/* $("#tj").click(function(){ */
			/* 
			if (confirm("真的要删除吗？")==true){
					return true;
			}else{
					return false;
			} */
			/* 
			if($("#tj").attr("checked")==false){
				return true;	
			}else{
				alert("请选择你要删除的对象。");
				return false;
			}
			*/
			
		/* }); */
		
		$("#name").blur(function(){
			if($.trim($("#name").val())==""){
				$("#nameSpan").css("display","inline-block");
			}else{
				$("#nameSpan").css("display","none");
			}
		});
		$("#price").blur(function(){
			if($.trim($("#price").val())==""||$.trim($("#price").val())<=0){
				$("#priceSpan").css("display","inline-block");
			}else{
				$("#priceSpan").css("display","none");
			}
			
			
		});
		$("#date").blur(function(){
			if($.trim($("#date").val())==""){
				$("#dateSpan").css("display","inline-block");
			}else{
				$("#dateSpan").css("display","none");
			}
		});
		$("#payer").blur(function(){
			if($.trim($("#payer").val())==""){
				$("#payerSpan").css("display","inline-block");
			}else{
				$("#payerSpan").css("display","none");
			}
		});
		$("#mobile").blur(function(){
			if($.trim($("#mobile").val())==""||$.trim($("#mobile").val()).length!=11){
				$("#mobileSpan").css("display","inline-block");
			}else{
				$("#mobileSpan").css("display","none");
			}
		});
		$("#address").blur(function(){
			if($.trim($("#address").val())==""){
				$("#addressSpan").css("display","inline-block");
			}else{
				$("#addressSpan").css("display","none");
			}
		});
		
		
		
		
		
	});

</script>


<body> 
<br><br><br>
<div id="div1">
&nbsp;&nbsp;&nbsp;&nbsp;
<b>添加销售数据</b>
<br>
<br>

<s:form action="addCar" theme="simple">
	
	车名:<s:textfield id="name" value="Jeep" name="carName"></s:textfield>&nbsp;&nbsp;<span style="color:red;display:none" id="nameSpan">名字不能为空</span><br>
	价格:<s:textfield id="price" value="2999" name="price"></s:textfield>&nbsp;&nbsp;<span style="color:red;display:none" id="priceSpan">价格不能为且要大于零</span><br>
	日期:<s:textfield id="date" value="2015-10-11" name="buyDate"></s:textfield>&nbsp;&nbsp;<span style="color:red;display:none" id="dateSpan">日期不能为空</span><br>
	用户:<s:textfield id="payer" value="王老五" name="payer"></s:textfield>&nbsp;&nbsp;<span style="color:red;display:none" id="payerSpan">付款人不能为空</span><br>
	邮箱:<s:textfield id="email" value="123@xx.com" name="email"></s:textfield><br>
	手机:<s:textfield id="mobile" value="13122222222" name="mobile"></s:textfield>&nbsp;&nbsp;<span style="color:red;display:none" id="mobileSpan">手机不能为空且只能为11位手机号码</span><br>
	地址:<s:textfield id="address" value="珠海" name="address"></s:textfield>&nbsp;&nbsp;<span style="color:red;display:none" id="addressSpan">地址不能为空</span><br>
	<br>	
	&nbsp;&nbsp;	
	&nbsp;&nbsp;&nbsp;&nbsp;
	<s:submit id="tj" value="确认"></s:submit>
</s:form>
</div>

</body>
</html>