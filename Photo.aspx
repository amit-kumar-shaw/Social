<%@ Page Title="" Language="C#" MasterPageFile="~/Design.master" AutoEventWireup="true" CodeFile="Photo.aspx.cs" Inherits="Photo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 33px;
            text-align: center;
        }
        .style6
        {
            font-size: xx-large;
            color: #990099;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style5">
                <asp:ImageButton ID="ImageButton6" runat="server" 
                    ImageUrl="~/images/upload-button.png" onclick="ImageButton6_Click" 
                    Width="200px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:FileUpload ID="FileUpload2" runat="server" Visible="False" />
&nbsp;<asp:ImageButton ID="btndobyes" runat="server" Height="25px" 
                ImageUrl="~/images/yes.gif" onclick="btndobyes_Click" ToolTip="Upload Photo" 
                Visible="False" Width="25px" />
&nbsp;
            <asp:ImageButton ID="btndobno" runat="server" Height="25px" 
                ImageUrl="~/images/256.png" onclick="btndobno_Click" ToolTip="Cancel" 
                Visible="False" Width="25px" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:TextBox ID="txtcaption" runat="server" TextMode="MultiLine" 
                    Visible="False" Width="343px" placeholder="Add a Caption..."></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <strong style="text-align: center">Uploaded Photos</strong></td>
        </tr>
        <tr>
            <td style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center; margin-left: 40px">
                <asp:Label ID="lbl" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#660033"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px">
                <asp:DataList ID="DataList2" runat="server" CellPadding="4" ForeColor="#333333" 
                    RepeatColumns="4" RepeatDirection="Horizontal">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="Label1" runat="server" ForeColor="#660066" 
                                        Text='<%# Eval("dt") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" Height="200px" 
                                        ImageUrl='<%# "uploadpic/"+Eval("img") %>' Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("caption") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

