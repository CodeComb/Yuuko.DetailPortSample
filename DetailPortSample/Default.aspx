<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DetailPortSample.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/jquery.yuuko-0.9.9.6.min.js"></script>
    <script src="yuuko/js"></script>
    <style>
        .template {
            display: none;
        }
    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Enterprise</th>
                <th>Controls</th>
            </tr>
        </thead>
        <tbody data-collection="EnterpriseCollectionPort" data-identifier="ID">
            <tr class="template enterprisecollectionport">
                <td data-field="EnterpriseCollectionPort.ID"></td>
                <td data-field="EnterpriseCollectionPort.Name"></td>
                <td>
                    <a href="Detail.aspx#$EnterpriseCollectionPort.ID">Detail</a>
                    <a href="Edit.aspx#$EnterpriseCollectionPort.ID">Edit</a>
                    <a href="javascript: DeletePort('EnterprisePort', '$EnterpriseCollectionPort.ID')">Delete</a>
                </td>
            </tr>
        </tbody>
    </table>
    <p><a href="Insert.aspx">Create</a></p>
    <script>
        var YuukoToken = "<%=Session["YuukoToken"]%>";
        DetailEvents.EnterprisePort.onDeleted = function (key, port) {
            $("#enterprisecollectionport-collection-" + key).remove();
        };
    </script>
</body>
</html>
