
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
					<select name="searchType">

						<!--  검색조건이없음 -->
						<option value="n" <c:out value="${cri.searchType == null ?'selected':'' }"/>>---</option>

						<!--  제목으로 검색 -->
						<option value="t"<c:out value="${cri.searchType eq 't'?'selected':'' }"/>>
							Title</option>

						<!--  내용으로 검색 -->
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':'' }"/>>
							Content</option>

						<!--  작성자로 검색 -->
						<option value="w"
							<c:out value="${cri.searchType eq 'w'?'selected':'' }"/>>
							Writer</option>

						<!--  제목이나내용으로검색  -->
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':'' }"/>>
							Title Or Content</option>

						<!--  내용이나 작성자로 검색 -->
						<option value="cw"
							<c:out value="${cri.searchType eq 'cw'?'selected':'' }"/>>
							Content Or Writer</option>

						<!--  제목이나 내용 혹은 작성자로 검색 -->
						<option value="tcw"
							<c:out value="${cri.searchType eq 'tcw'?'selected':'' }"/>>
							Title Or Content Or Writer</option>

					</select>
					
					 <input type="text" name="keyword" id="keywordInput"
						value="${cri.keyword }">
					<button id="searchBtn">Search</button>
					<button id="newBtn">New Board</button>
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
									<td><a
										href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}'>${boardVO.title}</a></td>
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
								href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">

							<li
								<c:out value="${pageMaker.cri.page == idx?'class =active':'' }" />>
								<a href="list${pageMaker.makeSearch(idx)}">${idx }</a>
							</li>

						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a
								href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&laquo;</a></li>
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

	$(document).ready(
			function() {
				$('#searchBtn').on(
						"click",
						function(event) {
							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword="
									+ encodeURIComponent($('#keywordInput')
											.val());
						});

				$('#newBtn').on("click", function(evt) {

					selt.loaction = "register";
				});
			});
</script>
</html>