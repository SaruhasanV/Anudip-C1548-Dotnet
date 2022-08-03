<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <div style="height: 354px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 264px; top: 79px; position: absolute" Text="Employee List"></asp:Label>
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" style="z-index: 1; left: 398px; top: 69px; position: absolute; height: 63px">
                <asp:ListItem>Saruhasan</asp:ListItem>
                <asp:ListItem>Prem</asp:ListItem>
                <asp:ListItem>Pema</asp:ListItem>
                <asp:ListItem>Praveen</asp:ListItem>
                <asp:ListItem>Suriya</asp:ListItem>
            </asp:ListBox>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 559px; top: 71px; position: absolute" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 415px; top: 154px; position: absolute" Text="Add to Text Box" />
            <asp:Panel ID="Panel1" runat="server" ForeColor="Red" style="z-index: 1; left: 97px; top: 201px; position: absolute; height: 338px; width: 731px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm2.aspx" style="z-index: 1; left: 84px; top: 22px; position: absolute; right: 486px;">Go to Another WebForm</asp:HyperLink>
                <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 449px; top: 253px; position: absolute"></asp:TextBox>
            </asp:Panel>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" style="z-index: 1; left: 473px; top: 214px; position: absolute; height: 188px; width: 259px"></asp:Calendar>
            <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 58px; top: 567px; position: absolute; height: 348px; width: 772px; margin-top: 0px">
                <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 140px; top: 85px; position: absolute"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 352px; top: 84px; position: absolute"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 271px; top: 122px; position: absolute; margin-top: 0px" Text="Button" />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" style="z-index: 1; left: 108px; top: 164px; position: absolute; height: 5px; width: 82px">
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                </asp:RadioButtonList>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" style="z-index: 1; left: 278px; top: 167px; position: absolute; height: 27px; width: 82px">
                    <asp:ListItem>Bold</asp:ListItem>
                    <asp:ListItem>Italic</asp:ListItem>
                    <asp:ListItem>Underline</asp:ListItem>
                </asp:CheckBoxList>
            </asp:Panel>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 320px; top: 609px; position: absolute" Text="Employee Name"></asp:Label>
        </div>
    </form>
</body>
</html>
