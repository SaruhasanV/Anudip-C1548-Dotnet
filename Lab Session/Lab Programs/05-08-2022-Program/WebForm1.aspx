<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 391px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#0066FF" style="z-index: 1; left: 285px; top: 135px; position: absolute" Text="Student Name"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#0066FF" style="z-index: 1; left: 284px; top: 180px; position: absolute" Text="Register Name"></asp:Label>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#0066FF" style="z-index: 1; left: 283px; top: 221px; position: absolute" Text="Degree"></asp:Label>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#0066FF" style="z-index: 1; left: 283px; top: 263px; position: absolute" Text="Department"></asp:Label>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#0066FF" style="z-index: 1; left: 283px; top: 298px; position: absolute" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 448px; top: 137px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 441px; top: 180px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 441px; top: 301px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 441px; top: 221px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 442px; top: 264px; position: absolute"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" OnClick="Button3_Click" style="z-index: 1; left: 539px; top: 345px; position: absolute" Text="Show Records" />
            <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" OnClick="Button4_Click" style="z-index: 1; left: 706px; top: 346px; position: absolute" Text="Delete Record" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None" style="z-index: 1; left: 681px; top: 133px; position: absolute; height: 133px; width: 187px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                    <asp:BoundField DataField="Register_Number" HeaderText="Register_Number" SortExpression="Register_Number" />
                    <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [RTable]"></asp:SqlDataSource>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Anudip Logo.jpg" style="z-index: 1; left: 181px; top: 26px; position: absolute; width: 571px; height: 90px" />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="False" ForeColor="Red" OnClick="Button1_Click" style="z-index: 1; left: 285px; top: 347px; position: absolute; width: 142px; right: 529px" Text="Register Now" />
            <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" OnClick="Button2_Click" style="z-index: 1; left: 456px; top: 348px; position: absolute" Text="Clear" />
        </div>
    </form>
</body>
</html>
