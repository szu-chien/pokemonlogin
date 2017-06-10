<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database">
    <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
    <jsp:setProperty property="port" name="database" value="3306"/>
    <jsp:setProperty property="db" name="database" value="4104029038"/>
    <jsp:setProperty property="user" name="database" value="4104029038"/>
    <jsp:setProperty property="password" name="database" value="Ss4104029038!"/>

</jsp:useBean>

<%

//取得帳號及密碼
  String account = request.getParameter("account");
  //資料庫連線
database.connectDB();
 //執行Selet SQL指令
database.query("select account from log where username = " + account);
//取得資料庫資料
ResultSet rs = database.getRS();

if(rs.first()){
  out.println("帳號已經被使用");
} else {
  out.println("帳號可以註冊");
}



%>
