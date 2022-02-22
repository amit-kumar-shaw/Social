<%@ Page Title="" Language="C#" MasterPageFile="~/Design.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td width="30%" valign="top">
                    <asp:DataList ID="DataList2" runat="server" Width="100%" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        ForeColor="Black" GridLines="Horizontal">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <ItemTemplate>
                            <asp:Button ID="Button6" runat="server" 
    BorderStyle="None" Text='<%# Eval("fname")+" "+Eval("mname")+" "+Eval("lname") %>' Width="100%" 
                                Height="35px" CommandArgument='<%# Eval("userid") %>' 
                                onclick="Button6_Click" />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
                <td valign="top">
                    <table class="style1">
                        <tr>
                            <td colspan="2">
                                <asp:DataList ID="DataList3" runat="server" BackColor="#E9EAED" 
                                    BorderColor="#660066" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                    GridLines="Both" Width="100%">
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <ItemStyle ForeColor="#000066" />
                                    <ItemTemplate>
                                        <table class="style1">
                                            <tr>
                                                <td width="50%">
                                                    <asp:Label ID="Label1" runat="server" Font-Size="Smaller" 
                                                        Text='<%# Eval("fname")+" "+Eval("mname")+" "+Eval("lname") %>' 
                                                        ForeColor="#663300"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Font-Size="Smaller" 
                                                        Text='<%# Eval("datetime") %>' ForeColor="#996600"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" valign="top">
                                                    <asp:Image ID="Image2" runat="server" Height="30px" 
                                                        ImageUrl='<%# "profilepic/"+Eval("img") %>' Width="25px" />
                                                    &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("msg") %>' Width="90%"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                </asp:DataList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtmesg" runat="server" placeholder="Write a message..." 
                                    Height="70px" TextMode="MultiLine" 
                                    Width="100%"></asp:TextBox>
                            </td>
                            <td valign="top" width="15%">
                                &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/send.png" 
                                    Width="70px" onclick="ImageButton6_Click" Height="55px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
            <tr>
                <td width="20%">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

