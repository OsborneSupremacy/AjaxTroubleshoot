<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="updPnlPromotion">
                <ProgressTemplate>
                    <img alt="" src="Image/Ajaxloader.gif" />
                </ProgressTemplate>
            </asp:UpdateProgress>

            Page_Load Counter: <asp:TextBox ID="counter" runat="server" Text="0" />

            <asp:UpdatePanel ID="updPnlPromotion" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <td align="left" style="width: 20%; background-color: #CDCD9C">
                        <asp:RadioButton ID="rdbPromotion" runat="server" Text="New Promotion" AutoPostBack="true" GroupName="TacPlan" OnCheckedChanged="rdbPromotion_OnCheckedChanged" Style="font-weight: bold" />
                    </td>
                    <td align="left" style="width: 30%; vertical-align: middle; background-color: #EBEBEB; text-align: center">
                        <asp:DropDownList runat="server" ID="ddlPromotion" Width="95%"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label Text="*" ForeColor="Red" Visible="false" runat="server" ID="lblPromoPlanMandatory"></asp:Label>
                    </td>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="rdbPromotion" EventName="CheckedChanged" />
                </Triggers>
            </asp:UpdatePanel>

        </div>
    </form>
</body>
</html>
