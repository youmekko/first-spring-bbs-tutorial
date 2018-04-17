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

						<button type="submit" class="btn btn-warning">Modify</button>
						<button type="submit" class="btn btn-danger">REMOVE</button>
						<button type="submit" class="btn btn-primary">LIST ALL</button>
					</div>



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
 $(document).read(function();{
	 //formObj는 위에 선언된 form태그를 의미한다.
	 var formObj = $("for[role='form']");
	 
	 console.log(formObj);
	 
	 $(".btn-waring").on("click", function(){
		formObj.attr("action", "/board/modify");
		formObj.attr("method", "get");
		formObj.submit();
	 });
	 
	 $(".btn-danger").on("click", function(){
		 formObj.attr("action", "/board/remove");
		 formObj.submit();
	 });
	 
	 $(".btn-primary").on("click", function(){
		 self.location = "/board/listAll";
	 });
	 
 });
</script>
</html>