<%@ Page Title="" Language="C#" MasterPageFile="~/Design.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style9
        {
            font-size: x-large;
            color: #990099;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            font-size: large;
        }
        .style11
        {
            width: 25%;
        }
        .style12
        {
            width: 40%;
        }
        .style13
        {
            width: 29%;
        }
        .style14
        {
            width: 56%;
        }
        .style15
        {
            width: 46%;
        }
        .style16
        {
            width: 41%;
        }
        .style17
        {
            width: 34%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style9" colspan="2">
            Basic Details</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="30%">
            <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            &nbsp;
            </td>
        <td rowspan="6" valign="top" width="25%">
            <asp:Image ID="imgpic" runat="server" Height="170px" Width="150px" />
            </td>
    </tr>
    <tr>
        <td width="30%">
            <asp:Label ID="Label3" runat="server" Text="Date Of Birth :"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbldob" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td class="style6" width="30%">
            <asp:Label ID="Label5" runat="server" Text="Gender :"></asp:Label>
        </td>
        <td class="style6">
            <asp:Label ID="lblgen" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td width="30%">
            Email id :</td>
        <td>
            <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td width="30%">
            <asp:Label ID="Label7" runat="server" Text="Marital Status :"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblms" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td width="30%">
            <asp:Label ID="Label9" runat="server" Text="About :"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblabt" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td class="style9" colspan="2">
            Academic Details</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7" width="30%">
            School :</td>
        <td colspan="2">
            <asp:DataList ID="ddlscl" runat="server" BackColor="#E9EAED" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal" Width="419px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style12">
                                <asp:Label ID="lblsclnm" runat="server" Text='<%# Eval("school") %>'></asp:Label>
                            </td>
                            <td width="5%">
                                &nbsp;</td>
                            <td class="style11">
                                <asp:Label ID="lblscldr" runat="server" Text='<%# Eval("syr") %>'></asp:Label>
                                -</td>
                            <td width="10%">
                                <asp:Label ID="lblscleyr" runat="server" Text='<%# Eval("eyr") %>'></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style7" width="30%">
            College :</td>
        <td colspan="2">
            <asp:DataList ID="ddlclg" runat="server" BackColor="#E9EAED" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal" Width="422px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style12">
                                <asp:Label ID="lblsclnm1" runat="server" Text='<%# Eval("college") %>'></asp:Label>
                                <br />
                                -<asp:Label ID="lblsclnm0" runat="server" Text='<%# Eval("degree") %>' 
                                    ForeColor="#666666"></asp:Label>
                            </td>
                            <td width="5%">
                                &nbsp;</td>
                            <td class="style13">
                                <asp:Label ID="lblscldr0" runat="server" Text='<%# Eval("syr") %>'></asp:Label>
                                -</td>
                            <td width="10%">
                                <asp:Label ID="lblscleyr0" runat="server" Text='<%# Eval("eyr") %>'></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
&nbsp;
            </td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td class="style9" colspan="2">
            Occupation</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
            <asp:DataList ID="ddljob" runat="server" BackColor="#E9EAED" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal" Width="425px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style15">
                                <asp:Label ID="lblsclnm" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                                <br />
                                -<asp:Label ID="lblsclnm0" runat="server" Text='<%# Eval("designation") %>' 
                                    ForeColor="#666666"></asp:Label>
                            </td>
                            <td width="5%">
                                &nbsp;</td>
                            <td class="style17">
                                <asp:Label ID="lblscldr" runat="server" Text='<%# Eval("syr") %>'></asp:Label>
                                -</td>
                            <td width="10%">
                                <asp:Label ID="lblscleyr" runat="server" Text='<%# Eval("eyr") %>'></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            </td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td class="style9" colspan="2">
            Hobbies</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
            <asp:DataList ID="ddlhby" runat="server" BackColor="#E9EAED" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal" Width="425px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="style1" style="height: 31px">
                        <tr>
                            <td class="style14">
                                <ul>
                                    <li>
                                        <asp:Label ID="lblsclnm" runat="server" Text='<%# Eval("hobby") %>'></asp:Label>
                                    </li>
                                </ul>
                            </td>
                            <td width="5%">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                            <td width="10%">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            </td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

