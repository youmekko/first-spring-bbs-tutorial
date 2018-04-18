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

				<!--  --------------------------------------------------------------------------- -->


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
									<td><a
										href='/board/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&bno=${boardVO.bno}'>${boardVO.title}</a></td>
									<td>${boardVO.writer}</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${boardVO.regDate}" /></td>
									<td><span class="badge bg-red">${boardVO.viewCnt}</span></td>
								</tr>
							</c:forEach>
					</table>


				</div>
				<div class="text-center">

					<ul class="pagination">



						<c:if test="${pageMaker.prev}">
							<li><a
								href="listPage?page=${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">

							<li
								<c:out value="${pageMaker.cri.page == idx?'class =active':''}" />>
								<a href="listPage${PageMaker.makeQuery(idx)}">${idx}</a>
							</li>

						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a
								href="listPage?page=${pageMaker.makeQuery(pageMaker.endPage +1) }">&laquo;</a></li>
						</c:if>

					</ul>

				</div>
				<!--  --------------------------------------------------------------------------- -->

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