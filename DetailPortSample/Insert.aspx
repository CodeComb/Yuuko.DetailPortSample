<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="DetailPortSample.Insert" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/jquery.yuuko-0.9.9.6.min.js"></script>
    <script src="yuuko/js"></script>
</head>
<body>
    <div data-detail="EnterprisePort" data-method="insert">
        <table>
            <tr>
                <td>Name</td>
                <td><input data-field="EnterprisePort.Name" type="text" /></td>
            </tr>
            <tr>
                <td>Tel</td>
                <td><input data-field="EnterprisePort.Tel" type="text" /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input data-field="EnterprisePort.Email" type="text" /></td>
            </tr>
        </table>
        <a href="javascript: InsertPort('EnterprisePort')">Create</a>
    </div>
    <script>
        var YuukoToken = "<%=Session["YuukoToken"]%>";
        DetailEvents.EnterprisePort.onInserted = function (flag)
        {
            window.location = "Default.aspx";
        }
    </script>
</body>
</html>