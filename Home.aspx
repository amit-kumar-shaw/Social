<%@ Page Title="" Language="C#" MasterPageFile="~/Design.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
        }
    .style7
    {
        height: 32px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style5">
            <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" 
                Width="80%" placeholder="What's on your mind???"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
                                            <asp:Button ID="Button1" runat="server" 
                BackColor="#662B95" BorderStyle="None" 
                                                Font-Size="Medium" ForeColor="White" Text="Post" 
                                                OnMouseOver="this.style.backgroundColor='#990099'" 
                                                
                OnMouseOut="this.style.backgroundColor='#662B95'" Height="100%" 
                onclick="Button1_Click" Width="51px"/>
                                        <asp:Label ID="msg" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style7">
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
                                            <asp:DataList ID="DataList2" runat="server" CellPadding="4" ForeColor="#333333">
                                                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                <ItemTemplate>
                                                    <table class="style1">
                                                        <tr>
                                                            <td>
                                                                <table class="style1">
                                                                    <tr>
                                                                        <td rowspan="2" width="55">
                                                                            <asp:Image ID="Image2" runat="server" Height="60px" 
                                                                                ImageUrl='<%# "profilepic/"+Eval("img") %>' Width="50px" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:Button ID="Button6" runat="server" BorderStyle="None" 
                                                                                CommandArgument='<%# Eval("userid") %>' Font-Bold="True" Font-Underline="True" 
                                                                                ForeColor="#0000CC" onclick="Button6_Click" 
                                                                                Text='<%# Eval("fname")+" "+Eval("mname")+" "+Eval("lname") %>' />
                                                                            &nbsp;uploaded a photo.</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            <asp:Label ID="Label1" runat="server" Font-Size="Small" ForeColor="#666666" 
                                                                                Text='<%# Eval("dt") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("caption") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Image ID="Image3" runat="server" Height="300px" 
                                                                    ImageUrl='<%# "uploadpic/"+Eval("pic") %>' Width="600px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImageButton6" runat="server" Height="40px" 
                                                                    ImageUrl='<%# "images/like.jpg" %>' onclick="ImageButton6_Click" 
                                                                    Width="100px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            </asp:DataList>
        </td>
    </tr>
    </table>
</asp:Content>

