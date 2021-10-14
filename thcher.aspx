<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="3lamat.aspx.cs" Inherits="school1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" align="center" width="100%" 
        style="height: 192px">
<tr>
<td dir="rtl" valign="top" align="center" class="main" bgcolor="Black" 
        
        
        style="background-position: center center; background-image: url('http://localhost:61905/Imges/Images/bgphoto.jpg'); font-family: 'Comic Sans MS'; font-size: medium; font-weight: bold; color: #FFFFFF; background-repeat: no-repeat; margin-right: 80px;">
 
    <asp:Label ID="Label4" runat="server" Text="رقم الهوية"></asp:Label><br />
    <asp:TextBox ID="NumID" runat="server" Height="23px"></asp:TextBox><br />
    اسم الصف<br />
    <asp:TextBox ID="PassWord" runat="server" Height="23px"></asp:TextBox><br /><br />
    <asp:Button ID="Button1" runat="server" Text="اضغط للدخول " /><br /><br />
 
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataSourceID="AccessDataSource1" Height="50px" 
        style="font-size: large" Width="186px">
        <Fields>
            <asp:BoundField DataField="اسم الصف" HeaderText="اسم الصف" 
                SortExpression="اسم الصف" />
            <asp:BoundField DataField="صلاح" HeaderText="صلاح" SortExpression="صلاح" />
            <asp:BoundField DataField="احمد" HeaderText="احمد" SortExpression="احمد" />
            <asp:BoundField DataField="علاء" HeaderText="علاء" SortExpression="علاء" />
            <asp:BoundField DataField="صلاح بدر" HeaderText="صلاح بدر" 
                SortExpression="صلاح بدر" />
            <asp:BoundField DataField="باسل" HeaderText="باسل" SortExpression="باسل" />
            <asp:BoundField DataField="طه" HeaderText="طه" SortExpression="طه" />
            <asp:BoundField DataField="محمد" HeaderText="محمد" SortExpression="محمد" />
            <asp:BoundField DataField="وليد" HeaderText="وليد" SortExpression="وليد" />
            <asp:BoundField DataField="اسماعيل" HeaderText="اسماعيل" 
                SortExpression="اسماعيل" />
            <asp:BoundField DataField="خليل" HeaderText="خليل" SortExpression="خليل" />
            <asp:BoundField DataField="احمد2" HeaderText="احمد2" SortExpression="احمد2" />
            <asp:BoundField DataField="جمال" HeaderText="جمال" SortExpression="جمال" />
            <asp:BoundField DataField="علي" HeaderText="علي" SortExpression="علي" />
            <asp:BoundField DataField="سلامة" HeaderText="سلامة" SortExpression="سلامة" />
            <asp:BoundField DataField="عدي" HeaderText="عدي" SortExpression="عدي" />
            <asp:BoundField DataField="ماجد" HeaderText="ماجد" SortExpression="ماجد" />
            <asp:BoundField DataField="بشار" HeaderText="بشار" SortExpression="بشار" />
            <asp:BoundField DataField="عبادة" HeaderText="عبادة" SortExpression="عبادة" />
            <asp:BoundField DataField="عمير" HeaderText="عمير" SortExpression="عمير" />
            <asp:BoundField DataField="حسام" HeaderText="حسام" SortExpression="حسام" />
            <asp:BoundField DataField="يوسف" HeaderText="يوسف" SortExpression="يوسف" />
            <asp:BoundField DataField="عبد ربه" HeaderText="عبد ربه" 
                SortExpression="عبد ربه" />
            <asp:BoundField DataField="موسى" HeaderText="موسى" SortExpression="موسى" />
            <asp:BoundField DataField="فادي" HeaderText="فادي" SortExpression="فادي" />
            <asp:BoundField DataField="سمير" HeaderText="سمير" SortExpression="سمير" />
            <asp:BoundField DataField="امير" HeaderText="امير" SortExpression="امير" />
            <asp:BoundField DataField="خالد" HeaderText="خالد" SortExpression="خالد" />
            <asp:BoundField DataField="جمعه" HeaderText="جمعه" SortExpression="جمعه" />
            <asp:BoundField DataField="منذر" HeaderText="منذر" SortExpression="منذر" />
            <asp:BoundField DataField="جميل" HeaderText="جميل" SortExpression="جميل" />
        </Fields>
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/shcool1.mdb" 
        
        SelectCommand="SELECT * FROM [علامات] WHERE (([رقم الهوية] = ?) AND ([اسم الصف] = ?))">
        <SelectParameters>
            <asp:ControlParameter ControlID="NumID" Name="رقم_الهوية" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="PassWord" Name="اسم_الصف" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
 
    <br />
    </td>
</tr>

</table>
</asp:Content>
