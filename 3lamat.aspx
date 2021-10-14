<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="3lamat.aspx.cs" Inherits="school1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" align="center" width="100%" 
        style="height: 192px">
<tr>
<td dir="rtl" valign="top" align="center" class="main" bgcolor="#CC9900" 
        
        
        
        style="background-position: center center; background-image: url('Imges/Images/bgphoto.jpg'); font-family: 'Comic Sans MS'; font-size: medium; font-weight: bold; color: #FFFFFF; background-repeat: no-repeat; margin-right: 80px;">
 
    <asp:Label ID="Label4" runat="server" Text="رقم الهوية"></asp:Label><br />
    <asp:TextBox ID="NumID" runat="server" Height="23px"></asp:TextBox><br />
    <asp:Label ID="Label1" runat="server" Text="الرقم السري"></asp:Label><br />
    <asp:TextBox ID="PassWord" runat="server" Height="23px" TextMode="Password"></asp:TextBox><br /><br />
    <asp:Button ID="Button1" runat="server" Text="اضغط للدخول " /><br /><br />
 
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ID" DataSourceID="AccessDataSource2" Height="50px" 
        style="font-size: large" Width="186px">
        <Fields>
            <asp:BoundField DataField="STD-Name" HeaderText="اسم الطالب" 
                SortExpression="STD-Name" />
            <asp:BoundField DataField="Sub1" HeaderText="لغة عربية" SortExpression="Sub1" />
            <asp:BoundField DataField="Sub5" HeaderText="لغة عبرية" SortExpression="Sub5" />
            <asp:BoundField DataField="Sub2" HeaderText="لغة انجليزية" 
                SortExpression="Sub2" />
            <asp:BoundField DataField="Sub3" HeaderText="حاسوب" SortExpression="Sub3" />
            <asp:BoundField DataField="Sub4" HeaderText="كيمياء" SortExpression="Sub4" />
            <asp:BoundField DataField="Sub7" HeaderText="دين" SortExpression="Sub7" />
            <asp:BoundField DataField="Sub8" HeaderText="مدنيات" SortExpression="Sub8" />
            <asp:BoundField DataField="sub9" HeaderText="تاريخ" SortExpression="sub9" />
            <asp:BoundField DataField="sub10" HeaderText="رياضيات" SortExpression="sub10" />
        </Fields>
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/shcool1.mdb" 
        
        SelectCommand="SELECT * FROM [studint] WHERE (([ID] = ?) AND ([Password] = ?))" 
        onselecting="AccessDataSource2_Selecting">
        <SelectParameters>
            <asp:ControlParameter ControlID="NumID" Name="ID" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="PassWord" Name="Password" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/shcool1.mdb" 
        SelectCommand="SELECT * FROM [studint] WHERE (([ID] = ?) AND ([Password] = ?))">
        <SelectParameters>
            <asp:ControlParameter ControlID="NumID" Name="ID" PropertyName="Text" 
                Type="Int32" />
            <asp:ControlParameter ControlID="PassWord" Name="Password" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:AccessDataSource>
 
    <br />
    </td>
</tr>

</table>
</asp:Content>
