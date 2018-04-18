<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<!-- Main Content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">HOME PAGE</h3>
				</div>


				<div class="box-body">

					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th>WRITER</th>
							<th>REGDATE</th>
							<th style="width: 40px">VIEWCNT</th>


							<c:forEach items="${list}" var="boardVO">

								<tr>
									<td>${boardVO.bno}</td>
									<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
									<td>${boardVO.writer}</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${boardVO.regDate}" /></td>
									<td><span class="badge bg-red">${boardVO.viewCnt}</span></td>
								</tr>
							</c:forEach>
					</table>


				</div>


			</div>
		</div>
		<!-- /.col(left) -->
	</div>
	<!-- /.content -->

</section>
<!-- /.content -->



<html>
<head>
<title>Home</title>
</head>
<body>
</body>
<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료 되었습니다!");
	}
</script>
</html>