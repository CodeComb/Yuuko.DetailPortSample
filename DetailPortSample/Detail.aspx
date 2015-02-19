<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="DetailPortSample.Detail" %>

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
    <div data-detail="EnterprisePort">
        <table>
            <tr>
                <td>Name</td>
                <td data-field="EnterprisePort.Name"></td>
            </tr>
            <tr>
                <td>Tel</td>
                <td data-field="EnterprisePort.Tel"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td data-field="EnterprisePort.Email"></td>
            </tr>
        </table>
    </div>
    <script>
        Detail.EnterprisePort = window.location.hash.replace("#", "");
        var YuukoToken = "<%=Session["YuukoToken"]%>";
    </script>
</body>
</html>
