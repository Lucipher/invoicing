<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:py="http://purl.org/kid/ns#"
    py:extends="'master.kid'">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" py:replace="''"/>
<title>Invoicing: Add/edit product</title>
</head>
<body>
  <div id="getting_started">
    <h3 py:if="len(form_values)==0">New product:</h3>
    <h3 py:if="len(form_values)>0">Edit product:</h3>
    ${product_form.display(form_values, options=form_options)}
  </div>
</body>
</html>
