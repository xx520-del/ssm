<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
</script>
</head>
<body>
    <a href="http://localhost:8080/w/1.jsp">gggg</a>hhh保存成功！
    <a href="http://localhost:8080/w/wx/1.jpg">ttt</a>
<img alt="aaa" src="http://localhost:8080/w/wx/2020-09-29/1.jpg"/>
   <form action="${pageContext.request.contextPath}/teacher/fileUpload" method="post" enctype="multipart/form-data">
        用户名：<input type="text" name="username"> <br>
        文件： <input type="file" name="imgFile"> <br>
        <input type="submit" value="上传">
    </form>
    

</body>
</html>