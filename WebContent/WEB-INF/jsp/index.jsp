<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(function(){
		
		$(".id1").click(function() {
			if (this.checked) {
				$(".box:checkbox").attr("checked", true);
			} else {
				$(".box:checkbox").attr("checked", false);
			}
		});
		$("#id2").click(function() {
			$(".box:checkbox").each(function() {
				$(this).attr("checked", !$(this).attr("checked"));
				
			});
			
			allCheck();
		}); 

		
	});

</script>

</head>
<body>
<br>
集合大小：${list.size()}
<br>
<s:form action="queryAllCar" theme="simple">
		<b>最低价：</b><s:textfield name="condition1"></s:textfield>
		<b>最高价：</b><s:textfield name="condition2"></s:textfield>
		<s:submit value="查询"></s:submit>
</s:form>
<br><br>
<s:form action="deleteCar" theme="simple">
<table border="1" cellpadding="1" cellspacing="0">
		<tr>
			<th colspan="10">汽车销售管理系统</th>
		</tr>
		
		<tr>
			<td>
				<s:checkbox fieldValue="123" name="123"  class="id1" value="false"></s:checkbox> 
			</td>
			<td>sid </td>
			<td>carName </td>
			<td>price </td>
			<td>buyDate	</td>
			<td>payer </td>
			<td>email  </td>
			<td>mobile</td>
			<td>address</td>
			<td>optional</td>
		</tr>
		<s:iterator value="list" var="carSale" status="car">
			<tr>
				<td>
					<s:checkbox fieldValue="%{sid}" name="deleteId" value="false" class="box"></s:checkbox>
				</td>
				
				<td><s:property value="%{#car.count}"/></td>
				<td><s:property value="carName"/></td>
				<td><s:property value="price"/></td>	
				<td><s:date name="buyDate" format="yyyy-MM-dd" /></td>
				<td><s:property value="payer"/></td>
				<td><s:property value="email"/></td>
				<td><s:property value="mobile"/></td>
				<td><s:property value="address"/></td>
				<td><s:a value="deleteCar?deleteSigleId=%{sid}">删除</s:a></td>
			</tr>
		</s:iterator>
</table>
<br/>
<s:checkbox fieldValue="123" name="123"  class="id1" value="false"></s:checkbox> <b>全选</b> 
<s:checkbox fieldValue="123" name="123"  id="id2" value="false"></s:checkbox> <b>反选</b> 
&nbsp;&nbsp;
<s:submit value="批量删除"></s:submit> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="addCar_jsp">添加</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</s:form>
</body>
</html>