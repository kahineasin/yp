<%
Set Fso = CreateObject("Scripting.FileSystemObject")
Set X = Fso.GetFolder(Server.mapPath("/ca/"))
For Each F in X.Subfolders
Response.Write F.Name & "[Folder]<br>"
Next
for each F in X.files
Response.Write "<a href='/ca/"&F.Name &"'>"&F.Name & "[File]</a><br>"
Next
%>