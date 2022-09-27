<?xml version="1.0" encoding="ISO-8859-1" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
	<jsp:directive.page contentType="text/html; charset=ISO-8859-1" 
		pageEncoding="ISO-8859-1" session="false"/>
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
	
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  
<title>Login - Demo App Insights </title>
</head>
<body>
	<h1> Login </h1>
    <form action="logon"  method="post">
    
        <div class="m-3">
            <div class="form-group row">
                <label class="col-4 col-form-label">E-mail: </label>
                <div class="col-8">
                    <input type="email" name="email"  class="form-control" />
                </div>
            </div>
             
            <div class="form-group row">
                <label class="col-4 col-form-label">Password: </label>
                <div class="col-8">
                    <input type="password" name="password" class="form-control"
                            minlength="6" maxlength="10"/>
                </div>
            </div>
        <p><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></p>
        </div>
    </form>
</body>
</html>
</jsp:root>