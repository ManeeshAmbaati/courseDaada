<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="openPage.html" %>
	<%
		String qry=request.getParameter("qry");		
		int k=Integer.parseInt(request.getParameter("srch"));
		
		if(qry.length()==0|| k==0)			
				out.print("enter correct input");
		else
			switch(k)
			{
			case 1 :
				
				response.sendRedirect("https://www.google.co.in/#q="+qry);
				break;
			case 2 :
				response.sendRedirect("https://www.youtube.co.in/#q="+qry);
				break;
			}
	%>
</body>
</html>