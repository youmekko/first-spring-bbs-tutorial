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


				<div class="box-body">

					<!-- form의 action 속성이 지정되지 않으면 현재 경로를 그대로 action의 대상 경로로 잡는다. -->
					<form role="form" method="post">
						<div class="box-header">
							<h3>REGISTER BOARD</h3>
						</div>

						<div class="box-body">

							<div class="form-group">
								<label for="registerTitle">Title</label> <input type="text"
									name="title" class="form-control" placeholder="Enter Title">
							</div>


							<div class="form-group">
								<label for="registerContent">Content</label>
								<textarea class="form-control" name="content" rows="3"
									placeholder="Enter...."></textarea>
							</div>

							<div class="form-group">
								<label for="registerWriter">Writer</label> <input type="text"
									name="writer" class="form-control" placeholder="Enter Writer">

							</div>

						</div>

						<!-- /.box-body -->

						<div class="box-footer">
							<button type="submit" class="btn btn-primary">submit</button>
						</div>


					</form>

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
</html>