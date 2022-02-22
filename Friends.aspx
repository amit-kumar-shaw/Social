<%@ Page Title="" Language="C#" MasterPageFile="~/Design.master" AutoEventWireup="true" CodeFile="Friends.aspx.cs" Inherits="Friends" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
    <asp:DataList ID="DataList1" runat="server" BackColor="#E9EAED" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal" 
        Width="100%">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="imgpic" runat="server" Height="200px" 
                            ImageUrl='<%# "profilepic/"+Eval("img") %>' style="text-align: center" 
                            Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="Button7" runat="server" BackColor="#E9EAED" 
                            BorderColor="#E9EAED" BorderStyle="None" 
                            CommandArgument='<%# Eval("userid") %>' Font-Bold="True" ForeColor="#993399" 
                            onclick="Button7_Click" 
                            Text='<%# Eval("fname")+" "+Eval("mname")+" "+Eval("lname") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>

