<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="DetailPortSample.Edit" %>

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
    <div data-detail="EnterprisePort" data-method="edit">
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
        <a href="javascript: EditPort('EnterprisePort')">Save</a>
    </div>
    <script>
        Detail.EnterprisePort = window.location.hash.replace("#", "");
        var YuukoToken = "<%=Session["YuukoToken"]%>";
        DetailEvents.EnterprisePort.onEdited = function ()
        {
            window.location = "Default.aspx";
        }
    </script>
</body>
</html>