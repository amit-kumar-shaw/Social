<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {}
        .style6
        {
            text-align: center;
            font-size: xx-large;
            color: #FFFFFF;
            height: 78px;
        }
        .style7
        {
            height: 19px;
        }
        .style8
        {
            height: 23px;
        }
        .style9
        {
            width: 180px;
        }
        .style11
        {
            width: 24%;
        }
        .style12
        {
            font-size: x-large;
        }
        .style13
        {
            color: #FFFFFF;
        }
        .style14
        {
            text-align: center;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .style15
        {
            color: #FFFFFF;
            width: 137px;
        }
        .style16
        {
            width: 137px;
        }
        .style17
        {
            width: 10%;
        }
        .style18
        {
            height: 23px;
            width: 10%;
        }
        .style19
        {
            height: 41px;
        }
        .style20
        {
            text-align: left;
        }
        .style21
        {
            text-align: right;
        }
    </style>
</head>
<body bgcolor="#ccccff" background="images/back.jpg">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;<table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td bgcolor="#662C92" class="style6" colspan="3">
                    <table class="style1">
                        <tr>
                            <td width="10%">
                                &nbsp;</td>
                            <td style="text-align: left" width="25%">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.jpg" />
                            </td>
                            <td class="style20">
                    WELCOME&nbsp;TO BEZZIE</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="45%" class="style7">
                    </td>
                <td width="5%" class="style7">
                    </td>
                <td width="50%" class="style7">
                    </td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" width="45%" rowspan="2">
                    <table class="style1">
                        <tr>
                            <td style="text-align: left; font-size: x-large">
                                &nbsp;</td>
                            <td style="text-align: left; font-size: x-large" width="60%">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="style3" width="5%">
                </td>
                <td class="style3" width="50%" rowspan="2">
                    <table class="style1">
                        <tr>
                            <td width="15%">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style14" rowspan="5" width="5%">
                    |</td>
            </tr>
            <tr>
                <td style="text-align: center" width="45%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" width="45%" rowspan="5">
                    <table class="style1" style="background-image: none">
                        <tr>
                            <td width="60%">
                                &nbsp;</td>
                            <td style="text-align: left; background-image: none; background-color: #662C92;" class="style9" 
                                rowspan="5">
                                <table bgcolor="#662C92" class="style1" frame="box">
                                    <tr>
                                        <td class="style13">
                                            Login To Bezzie</td>
                                    </tr>
                                    <tr>
                                        <td>
                                <asp:TextBox ID="txtloginid" runat="server" placeholder="Email ID"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtloginid" Display="Dynamic" ErrorMessage="Email ID missing" 
                                                ForeColor="Red" ValidationGroup="Login"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                <asp:TextBox ID="txtloginpassword" runat="server" placeholder="Password" 
                                                TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtloginpassword" Display="Dynamic" 
                                                ErrorMessage="Password missing" ForeColor="Red" ValidationGroup="Login"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="100%">
                                <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                                                ValidationGroup="Login" ToolTip="Click To Login" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="10%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width="60%">
                                &nbsp;</td>
                            <td width="10%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width="60%" class="style8">
                                &nbsp;</td>
                            <td width="10%" class="style8">
                                </td>
                        </tr>
                        <tr>
                            <td width="60%">
                                &nbsp;</td>
                            <td width="10%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width="60%">
                                &nbsp;</td>
                            <td width="10%">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td width="50%" rowspan="10">
                    <table class="style1">
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                            <td width="40%" class="style11" rowspan="10">
                                <table bgcolor="#662C92" class="style1" frame="box">
                                    <tr>
                                        <td class="style15">
                                            New To Bezzie? Sign Up</td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                <asp:TextBox ID="txtFname" runat="server" placeholder="First Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="First Name Missing" 
                                                ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                <asp:TextBox ID="txtMname" runat="server" placeholder="Middle Name"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                <asp:TextBox ID="txtLname" runat="server" placeholder="Last Name"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                <asp:RadioButtonList ID="rblGender" runat="server" 
                                    RepeatDirection="Horizontal" ForeColor="White">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="rblGender" Display="Dynamic" 
                                                ErrorMessage="Gender Required" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email ID"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email ID missing" 
                                                ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="txtPassword" Display="Dynamic" 
                                                ErrorMessage="Password missing" ForeColor="Red" ValidationGroup="Signup"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                <asp:TextBox ID="txtcpassword" runat="server" placeholder="Confirm Password" 
                                                TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="txtcpassword" Display="Dynamic" 
                                                ErrorMessage="Confirm Password Missing" ForeColor="Red" 
                                                ValidationGroup="Signup"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                ControlToCompare="txtPassword" ControlToValidate="txtcpassword" 
                                                Display="Dynamic" ErrorMessage="Password mismatch" ForeColor="Red" 
                                                ValidationGroup="Signup"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                            <asp:Label ID="lblms" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                <asp:Button ID="Button2" runat="server" Text="Sign Up" ValidationGroup="Signup" 
                                                onclick="Button2_Click" ToolTip="Click To Sign Up" />
                                        </td>
                                    </tr>
                                    </table>
                            </td>
                            <td width="30%" rowspan="10" style="width: 50%">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style18">
                                </td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="5%" class="style19">
                    </td>
            </tr>
            <tr>
                <td class="style14" width="5%">
                    OR</td>
            </tr>
            <tr>
                <td width="5%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14" rowspan="3" width="5%">
                    |</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="45%">
                    &nbsp;</td>
                <td width="5%">
                    &nbsp;</td>
                <td width="50%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#662C92" class="style21" colspan="3" height="50" 
                    style="width: 95%">
                    <span style="color: #FFFFFF">Bezzie © 2015. All Rights Reserved.&nbsp; </span></td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
