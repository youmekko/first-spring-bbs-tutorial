<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>

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

				<!-- ---------------------------------------------------------- -->
				<div class="box-body">

					<form role="form" method="post">
						<input type="hidden" name="bno" value="${boardVO.bno}">
					</form>


					<div class="box-body">
						<div class="form-group">
							<label for="readTitle">Title</label><input type="text"
								name="title" class="form-control" value="${boardVO.title}"
								readonly="readonly">
						</div>


						<div class="form-group">

							<label for="readContent">Content</label>
							<textarea class="form-control" name="content" rows="3"
								readonly="readonly">${boardVO.content}</textarea>
						</div>


						<div class="form-group">
							<label for="readWriter">Writer</label><input type="text"
								name="writer" class="form-control" value="${boardVO.writer}"
								readonly="readonly">
						</div>

					</div>

					<div class="box-footer">

						<button type="submit" class="btn btn-warning modifyBtn">MODIFY</button>
						<button type="submit" class="btn btn-danger removeBtn">REMOVE</button>
						<button type="submit" class="btn btn-primary goListBtn">LIST
							ALL</button>
					</div>


					<form role="form" action="modifyPage" method="post">
						<input type="hidden" name="bno" value="${boardVO.bno }"> <input
							type="hidden" name="page" value="${cri.page }"> <input
							type="hidden" name="perPageNum" value="${cri.perPageNum}">
						<input type="hidden" name="searchType" value="${cri.searchType }">
						<input type="hidden" name="keyword" value="${cri.keyword }">

					</form>



				</div>
				<!-- ---------------------------------------------------------- -->

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
	$(document).ready(function() {
		//formObj는 위에 선언된 form태그를 의미한다.
		var formObj = $("form[role='form']");

		console.log(formObj);

		$(".btn-warning").on("click", function() {
			formObj.attr("action", "/sboard/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$(".btn-danger").on("click", function() {
			formObj.attr("action", "/sboard/removePage");
			formObj.submit();
		});

		$(".btn-primary").on("click", function() {
			formObj.attr("method", "get")
			formObj.attr("action", "/sboard/list")
			formObj.submit();
		});

		/* $(".goListBtn").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/sboard/list");
			formObj.submit();

		});

		$(".removeBtn").on("click", function() {
			formObj.attr("action", "/board/removePage");
			formObj.submit();
		});

		$(".modifyBtn").on("click", function() {
			formObj.attr("action", "/board/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		}); */

	});
</script>
</html>