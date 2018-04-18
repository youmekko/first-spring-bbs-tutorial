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

				<form role="form" method="post">

					<div class="box-body">
						<div class="form-group">
							<label for="modifyBno">BNO</label><input type="text" name="bno"
								class="form-control" value="${boardVO.bno}" readonly="readonly">
						</div>

						<div class="form-group">
							<label for="modifyTitle">Title</label><input type="text"
								name="title" class="form-control" value="${boardVO.title}">
						</div>

						<div class="form-group">
							<label for="modifyContent">Content</label>
							<textarea class="form-control" name="content" rows="3">${boardVO.content}</textarea>
						</div>

						<div class="form-group">
							<label for="modifyWriter">Writer</label><input type="text"
								name="bno" class="form-control" value="${boardVO.writer}"
								readonly="readonly">
						</div>

					</div>

				</form>


				<div class="box-footer">
					<button type="submit" class="btn btn-primary">SAVE</button>
					<button type="submit" class="btn btn-warning">CANCEL</button>

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

		var formObj = $("form[role='form']");
		console.log(formObj);

		$(".btn-warning").on("click", function() {
			self.location = "/board/listAll";
		});

		$(".btn-primary").on("click", function() {
			formObj.submit();

		});
	});
</script>
</html>