<%@ Page Title="" Language="C#" MasterPageFile="~/Design.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 26px;
        }
        .style7
        {
            font-size: large;
        }
        .style9
        {
            font-size: x-large;
            color: #990099;
        }
        .style10
        {
            height: 34px;
        }
        .style11
        {
            width: 28%;
        }
        .style12
        {
            width: 25%;
        }
        .style13
        {
            width: 44%;
        }
        .style14
        {
            width: 56%;
        }
        .style15
        {
            width: 42%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style9">
            Basic Details</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td>
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
    </tr>
    <tr>
        <td width="30%">
            <asp:Label ID="Label3" runat="server" Text="Date Of Birth :"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lbldob" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            <asp:ImageButton ID="btndob" runat="server" Height="25px" 
                ImageUrl="~/images/editbtn.png" Width="25px" onclick="btndob_Click" 
                ToolTip="Change Date Of Birth" />
            <asp:DropDownList ID="ddlday" runat="server" Visible="False" Width="75px">
                <asp:ListItem Value=" ">Day</asp:ListItem>
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlmonth" runat="server" Visible="False" Width="80px">
                <asp:ListItem Value=" ">Month</asp:ListItem>
                <asp:ListItem Value="01">Jan</asp:ListItem>
                <asp:ListItem Value="02">Feb</asp:ListItem>
                <asp:ListItem Value="03">Mar</asp:ListItem>
                <asp:ListItem Value="04">Apr</asp:ListItem>
                <asp:ListItem Value="05">May</asp:ListItem>
                <asp:ListItem Value="06">Jun</asp:ListItem>
                <asp:ListItem Value="07">Jul</asp:ListItem>
                <asp:ListItem Value="08">Aug</asp:ListItem>
                <asp:ListItem Value="09">Sep</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlyear" runat="server" Visible="False" 
                Width="75px">
                <asp:ListItem Value=" ">Year</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
            </asp:DropDownList>
            <asp:ImageButton ID="btndobyes" runat="server" Height="25px" 
                ImageUrl="~/images/yes.gif" onclick="btndobyes_Click" ToolTip="Change Date of Birth" 
                Visible="False" Width="25px" />
&nbsp;
            <asp:ImageButton ID="btndobno" runat="server" Height="25px" 
                ImageUrl="~/images/256.png" onclick="btndobno_Click" ToolTip="Cancel" 
                Visible="False" Width="25px" />
        </td>
    </tr>
    <tr>
        <td class="style6" width="30%">
            <asp:Label ID="Label5" runat="server" Text="Gender :"></asp:Label>
        </td>
        <td class="style6">
            <asp:Label ID="lblgen" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton14" runat="server" Height="25px" 
                Visible="False" Width="25px" />
        </td>
    </tr>
    <tr>
        <td width="30%" class="style10">
            Email id :</td>
        <td class="style10">
            <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton17" runat="server" Height="25px" 
                Visible="False" Width="25px" />
        </td>
    </tr>
    <tr>
        <td width="30%">
            <asp:Label ID="Label7" runat="server" Text="Marital Status :"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblms" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            <asp:ImageButton ID="btnms" runat="server" Height="25px" 
                ImageUrl="~/images/editbtn.png" Width="25px" onclick="btnms_Click" 
                ToolTip="Change Marital Status" />
            <asp:DropDownList ID="DropDownList1" runat="server" Visible="False" 
                Width="120px">
                <asp:ListItem Value=" ">---Select---</asp:ListItem>
                <asp:ListItem>Single</asp:ListItem>
                <asp:ListItem>Engaged</asp:ListItem>
                <asp:ListItem>Married</asp:ListItem>
            </asp:DropDownList>
            <asp:ImageButton ID="btnmsyes" runat="server" Height="25px" 
                ImageUrl="~/images/yes.gif" onclick="btnmsyes_Click" ToolTip="Change Marital Status" 
                Visible="False" Width="25px" />
&nbsp;
            <asp:ImageButton ID="btnmsno" runat="server" Height="25px" 
                ImageUrl="~/images/256.png" onclick="btnmsno_Click" ToolTip="Cancel" 
                Visible="False" Width="25px" />
        </td>
    </tr>
    <tr>
        <td width="30%">
            <asp:Label ID="Label9" runat="server" Text="About :"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblabt" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;
            <asp:ImageButton ID="btnabt" runat="server" Height="25px" 
                ImageUrl="~/images/editbtn.png" Width="25px" onclick="btnabt_Click" 
                ToolTip="Change About yourself" />
            <asp:TextBox ID="txtabt" runat="server" Height="40px" TextMode="MultiLine" 
                Width="300px" placeholder="Write about yourself..." Visible="False"></asp:TextBox>
            <asp:ImageButton ID="btnabtyes" runat="server" Height="25px" 
                ImageUrl="~/images/yes.gif" onclick="btnabtyes_Click" ToolTip="Change About yourself" 
                Visible="False" Width="25px" />
&nbsp;
            <asp:ImageButton ID="btnabtno" runat="server" Height="25px" 
                ImageUrl="~/images/256.png" onclick="btnabtno_Click" ToolTip="Cancel" 
                Visible="False" Width="25px" />
        </td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td class="style9">
            Academic Details</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7" width="30%">
            School :</td>
        <td>
            <asp:DataList ID="ddlscl" runat="server" BackColor="#E9EAED" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal" Width="424px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style15">
                                <asp:Label ID="lblsclnm" runat="server" Text='<%# Eval("school") %>'></asp:Label>
                            </td>
                            <td width="5%">
                                &nbsp;</td>
                            <td class="style11">
                                <asp:Label ID="lblscldr" runat="server" Text='<%# Eval("syr") %>'></asp:Label>
                                -</td>
                            <td width="20%">
                                <asp:Label ID="lblscleyr" runat="server" Text='<%# Eval("eyr") %>'></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:TextBox ID="txtscl" runat="server" 
                Width="240px" placeholder="School Name" Visible="False"></asp:TextBox>
            <asp:DropDownList ID="DropDownList2" runat="server" Visible="False" 
                Width="110px">
                <asp:ListItem Value=" ">Start Year</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server" Visible="False" 
                Width="100px">
                <asp:ListItem Value=" ">End Year</asp:ListItem>
                <asp:ListItem>Studying</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:ImageButton ID="btnscl" runat="server" Height="30px" 
                ImageUrl="~/images/add.png" Width="30px" onclick="btnscl_Click" 
                ToolTip="Add School" />
            <asp:ImageButton ID="btnsclyes" runat="server" Height="30px" 
                ImageUrl="~/images/yes.gif" onclick="btnsclyes_Click" ToolTip="Add School" 
                Visible="False" Width="30px" />
&nbsp;
            <asp:ImageButton ID="btnsclno" runat="server" Height="30px" 
                ImageUrl="~/images/256.png" onclick="btnsclno_Click" ToolTip="Cancel" 
                Visible="False" Width="30px" />
        </td>
    </tr>
    <tr>
        <td class="style7" width="30%">
            College :</td>
        <td>
            <asp:DataList ID="ddlclg" runat="server" BackColor="#E9EAED" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal" Width="425px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style13">
                                <asp:Label ID="lblsclnm" runat="server" Text='<%# Eval("college") %>'></asp:Label>
                                <br />
                                -<asp:Label ID="lblsclnm0" runat="server" Text='<%# Eval("degree") %>' 
                                    ForeColor="#666666"></asp:Label>
                            </td>
                            <td width="5%">
                                &nbsp;</td>
                            <td class="style12">
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
        <td>
            <asp:ImageButton ID="btnclg" runat="server" Height="30px" 
                ImageUrl="~/images/add.png" Width="30px" ToolTip="Add College" 
                onclick="btnclg_Click" />
            <br />
            <asp:TextBox ID="txtclg" runat="server" 
                Width="240px" placeholder="College Name" Visible="False"></asp:TextBox>
            <asp:TextBox ID="txtdeg" runat="server" 
                Width="240px" placeholder="Degree" Visible="False"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DropDownList4" runat="server" Visible="False" 
                Width="110px">
                <asp:ListItem Value=" ">Start Year</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList5" runat="server" Visible="False" 
                Width="100px">
                <asp:ListItem Value=" ">End Year</asp:ListItem>
                <asp:ListItem>Studying</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:ImageButton ID="btnclgyes" runat="server" Height="30px" 
                ImageUrl="~/images/yes.gif" onclick="btnclgyes_Click" ToolTip="Add College" 
                Visible="False" Width="30px" />
&nbsp;
            <asp:ImageButton ID="btnclgno" runat="server" Height="30px" 
                ImageUrl="~/images/256.png" onclick="btnclgno_Click" ToolTip="Cancel" 
                Visible="False" Width="30px" />
        </td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td class="style9">
            Occupation</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td>
            <asp:DataList ID="ddljob" runat="server" BackColor="#E9EAED" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal" Width="425px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style13">
                                <asp:Label ID="lblsclnm" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                                <br />
                                -<asp:Label ID="lblsclnm0" runat="server" Text='<%# Eval("designation") %>' 
                                    ForeColor="#666666"></asp:Label>
                            </td>
                            <td width="5%">
                                &nbsp;</td>
                            <td class="style12">
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
            <asp:ImageButton ID="btnjob" runat="server" Height="30px" 
                ImageUrl="~/images/add.png" Width="30px" ToolTip="Add Occupation" 
                onclick="btnjob_Click" />
            <br />
            <asp:TextBox ID="txtcmp" runat="server" 
                Width="240px" placeholder="Company Name" Visible="False"></asp:TextBox>
            <asp:TextBox ID="txtdsn" runat="server" 
                Width="240px" placeholder="Designation" Visible="False"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DropDownList6" runat="server" Visible="False" 
                Width="110px">
                <asp:ListItem Value=" ">Start Year</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList7" runat="server" Visible="False" 
                Width="100px">
                <asp:ListItem Value=" ">End Year</asp:ListItem>
                <asp:ListItem>Working</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
                <asp:ListItem>2005</asp:ListItem>
                <asp:ListItem>2004</asp:ListItem>
                <asp:ListItem>2003</asp:ListItem>
                <asp:ListItem>2002</asp:ListItem>
                <asp:ListItem>2001</asp:ListItem>
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem>1996</asp:ListItem>
                <asp:ListItem>1995</asp:ListItem>
                <asp:ListItem>1994</asp:ListItem>
                <asp:ListItem>1993</asp:ListItem>
                <asp:ListItem>1992</asp:ListItem>
                <asp:ListItem>1991</asp:ListItem>
                <asp:ListItem>1990</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:ImageButton ID="btnjobyes" runat="server" Height="30px" 
                ImageUrl="~/images/yes.gif" onclick="btnjobyes_Click" ToolTip="Add Job" 
                Visible="False" Width="30px" />
&nbsp;
            <asp:ImageButton ID="btnjobno" runat="server" Height="30px" 
                ImageUrl="~/images/256.png" onclick="btnjobno_Click" ToolTip="Cancel" 
                Visible="False" Width="30px" />
        </td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td class="style9">
            Hobbies</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td>
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
            <asp:ImageButton ID="btnhby" runat="server" Height="30px" 
                ImageUrl="~/images/add.png" Width="30px" ToolTip="Add Hobby" 
                onclick="btnhby_Click" />
            <asp:TextBox ID="txthby" runat="server" 
                Width="240px" placeholder="Add a Hobby..." Visible="False"></asp:TextBox>
            <br />
            <asp:ImageButton ID="btnhbyyes" runat="server" Height="30px" 
                ImageUrl="~/images/yes.gif" onclick="btnhbyyes_Click" ToolTip="Add Hobby" 
                Visible="False" Width="30px" />
&nbsp;
            <asp:ImageButton ID="btnhbyno" runat="server" Height="30px" 
                ImageUrl="~/images/256.png" onclick="btnhbyno_Click" ToolTip="Cancel" 
                Visible="False" Width="30px" />
        </td>
    </tr>
    <tr>
        <td width="30%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

