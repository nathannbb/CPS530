<%
Dim bgColor, lastVisit

' Retrieve the background color from the query string
bgColor = Request.QueryString("bg")

If bgColor = "" Then
    bgColor = "white" ' Default background color
End If

' Check for last visit cookie
If Request.Cookies("lastVisit") <> "" Then
    lastVisit = Request.Cookies("lastVisit")
Else
    lastVisit = "This is your first visit."
End If

' Update the last visit cookie
Response.Cookies("lastVisit") = Now()
Response.Cookies("lastVisit").Expires = DateAdd("d", 30, Now())
%>
<!DOCTYPE html>
<html>
<head>
    <title>Lab10a</title>
</head>
<body style="background-color:<%= bgColor %>;">
    <h1>Welcome to the ASP Page</h1>
    <p>Last visit: <%= lastVisit %></p>
</body>
</html>
