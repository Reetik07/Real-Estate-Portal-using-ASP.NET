<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project1.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
         .con {
            width: 600px;
        }

        @media (max-width: 700px) {
            .con {
                width: 500px;
            }
        }
        @media (max-width: 550px) {
            .con {
                width: 450px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="width: 100%; padding-top: 5%; padding-bottom: 5%; z-index: 0; text-align: center;">
        <asp:Panel ID="Panel2" runat="server" CssClass="con" style="margin-left: auto; margin-right: auto; text-align: center;">
        <asp:Panel ID="Panel3" runat="server" style="margin-left: auto; margin-right: auto; width: 100%; border: solid 1px black; box-shadow: 4px 4px 4px #88888888; border-radius: 20px; background-color: white;">
        <!--<div style="border: solid 1px black; box-shadow: 4px 4px 4px #88888888; border-radius: 20px; background-color: white;">-->
            <asp:Panel ID="Panel4" runat="server" style="padding-top: 5%; padding-bottom: 5%; padding-left: 10%; padding-right: 10%; text-align: center;">
                <asp:Panel ID="Panel5" runat="server" style="padding-top: 1%; width: 100%; font-size: 200%; text-align: left;">
                    <asp:Panel ID="Panel6" runat="server" style="width: 100%;">Sign Up</asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel7" runat="server">
                    <hr/>
                </asp:Panel>
                <asp:Panel ID="Panel8" runat="server" style="text-align: center; padding-top: 7%; width: 100%;">
                    <asp:Panel ID="Panel9" runat="server" style="float: left; width: 49%; text-align: left; padding-bottom: 5%;">
                        <asp:TextBox ID="first_name" runat="server" placeholder="First Name" Width="90%" Height="35" style="border-radius: 7px; padding-left: 2%; outline: none; border: 1px solid black; "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="first_name" ErrorMessage="Please enter your first name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </asp:Panel>
                    <asp:Panel ID="Panel10" runat="server" style="float: left; width: 49%; text-align: left; padding-bottom: 5%; padding-left: 1%;">
                        <asp:TextBox ID="last_name" runat="server" placeholder="Last Name" Width="100%" Height="35" style="border-radius: 7px; padding-left: 2%; outline: none; border: 1px solid black; "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="last_name" ErrorMessage="Please enter your last name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel11" runat="server" style="text-align: center; padding-top: 7%; width: 100%; padding-bottom: 5%;">
                    <asp:TextBox ID="email" runat="server" placeholder="Email ID" Width="98%" Height="35" style="border-radius: 7px; padding-left: 2%; outline: none; border: 1px solid black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Please enter your email id" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Invalid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                </asp:Panel>
                <asp:Panel ID="Panel12" runat="server" style="text-align: center; width: 100%;  padding-bottom: 5%;">
                    <asp:TextBox ID="password" runat="server" placeholder="Password" Width="98%" Height="35" style="border-radius: 7px; padding-left: 2%; outline: none; border: 1px solid black" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="Please enter a password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="password" ErrorMessage="Password must be minimum 8 characters long" ForeColor="Red" ValidationExpression="^(?=.{8,}$).*" Display="Dynamic"></asp:RegularExpressionValidator>
                </asp:Panel>
                <asp:Panel ID="Panel13" runat="server" style="text-align: center; width: 100%; padding-bottom: 5%;">
                    <asp:TextBox ID="repassword" runat="server" placeholder="Re-enter Password" Width="98%" Height="35" style="border-radius: 7px; padding-left: 2%; outline: none; border: 1px solid black" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="repassword" ErrorMessage="Please re-enter your password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="repassword" ErrorMessage="Re-entered password must be same" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                </asp:Panel>
                <asp:Panel ID="Panel14" runat="server" style="text-align: center; width: 100%; padding-bottom: 5%;">
                    <asp:TextBox ID="mobile" runat="server" placeholder="Mobile No." Width="98%" Height="35" style="border-radius: 7px; padding-left: 2%; outline: none; border: 1px solid black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mobile" ErrorMessage="Please enter mobile number" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="Invalid mobile number" ForeColor="Red" ValidationExpression="\d{10}" Display="Dynamic"></asp:RegularExpressionValidator>
                </asp:Panel>
                <asp:Panel ID="Panel15" runat="server" style="text-align: center; width: 100%; padding-bottom: 5%;">
                    <asp:TextBox ID="city" runat="server" placeholder="City" Width="98%" Height="35" style="border-radius: 7px; padding-left: 2%; outline: none; border: 1px solid black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="city" ErrorMessage="Please enter city name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </asp:Panel>
                <asp:Panel ID="Panel16" runat="server" style="padding-bottom: 3%; width: 100%;">
                    <asp:Panel ID="Panel17" runat="server" style="text-align: left; ">
                        Date of birth:
                    </asp:Panel>
                    <asp:Panel ID="Panel18" runat="server">
                        <asp:Panel ID="Panel19" runat="server" style="float: left; width: 30%; padding-right: 2.5%;">
                            <asp:DropDownList ID="day" runat="server" Width="100%" Height="35">
                                <asp:ListItem Selected="True" Hidden="True" Value="">Day</asp:ListItem>
                                <asp:ListItem Value="01">1</asp:ListItem>
                                <asp:ListItem Value="02">2</asp:ListItem>
                                <asp:ListItem Value="03">3</asp:ListItem>
                                <asp:ListItem Value="04">4</asp:ListItem>
                                <asp:ListItem Value="05">5</asp:ListItem>
                                <asp:ListItem Value="06">6</asp:ListItem>
                                <asp:ListItem Value="07">7</asp:ListItem>
                                <asp:ListItem Value="08">8</asp:ListItem>
                                <asp:ListItem Value="09">9</asp:ListItem>
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="day" ErrorMessage="Select date" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel20" runat="server" style="float: left; width: 30%; padding-left: 2.5%; padding-right: 2.5%;">
                            <asp:DropDownList ID="month" runat="server" Width="100%" Height="35">
                                <asp:ListItem Selected="True" Hidden="True"  Value="">Month</asp:ListItem>
                                <asp:ListItem Value="01">January</asp:ListItem>
                                <asp:ListItem Value="02">February</asp:ListItem>
                                <asp:ListItem Value="03">March</asp:ListItem>
                                <asp:ListItem Value="04">April</asp:ListItem>
                                <asp:ListItem Value="05">May</asp:ListItem>
                                <asp:ListItem Value="06">June</asp:ListItem>
                                <asp:ListItem Value="07">July</asp:ListItem>
                                <asp:ListItem Value="08">August</asp:ListItem>
                                <asp:ListItem Value="09">September</asp:ListItem>
                                <asp:ListItem Value="10">October</asp:ListItem>
                                <asp:ListItem Value="11">November</asp:ListItem>
                                <asp:ListItem Value="12">December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="month" ErrorMessage="Select month" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel21" runat="server" style="float: left; width: 30%; padding-left: 2.5%;">
                            <asp:DropDownList ID="year" runat="server" Width="100%" Height="35">
                                <asp:ListItem Selected="True" Hidden="True" Value="">Year</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>
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
                                <asp:ListItem>1989</asp:ListItem>
                                <asp:ListItem>1988</asp:ListItem>
                                <asp:ListItem>1987</asp:ListItem>
                                <asp:ListItem>1986</asp:ListItem>
                                <asp:ListItem>1985</asp:ListItem>
                                <asp:ListItem>1984</asp:ListItem>
                                <asp:ListItem>1983</asp:ListItem>
                                <asp:ListItem>1982</asp:ListItem>
                                <asp:ListItem>1981</asp:ListItem>
                                <asp:ListItem>1980</asp:ListItem>
                                <asp:ListItem>1979</asp:ListItem>
                                <asp:ListItem>1978</asp:ListItem>
                                <asp:ListItem>1977</asp:ListItem>
                                <asp:ListItem>1976</asp:ListItem>
                                <asp:ListItem>1975</asp:ListItem>
                                <asp:ListItem>1974</asp:ListItem>
                                <asp:ListItem>1973</asp:ListItem>
                                <asp:ListItem>1972</asp:ListItem>
                                <asp:ListItem>1971</asp:ListItem>
                                <asp:ListItem>1970</asp:ListItem>
                                <asp:ListItem>1969</asp:ListItem>
                                <asp:ListItem>1968</asp:ListItem>
                                <asp:ListItem>1967</asp:ListItem>
                                <asp:ListItem>1966</asp:ListItem>
                                <asp:ListItem>1965</asp:ListItem>
                                <asp:ListItem>1964</asp:ListItem>
                                <asp:ListItem>1963</asp:ListItem>
                                <asp:ListItem>1962</asp:ListItem>
                                <asp:ListItem>1961</asp:ListItem>
                                <asp:ListItem>1960</asp:ListItem>
                                <asp:ListItem>1959</asp:ListItem>
                                <asp:ListItem>1958</asp:ListItem>
                                <asp:ListItem>1957</asp:ListItem>
                                <asp:ListItem>1956</asp:ListItem>
                                <asp:ListItem>1955</asp:ListItem>
                                <asp:ListItem>1954</asp:ListItem>
                                <asp:ListItem>1953</asp:ListItem>
                                <asp:ListItem>1952</asp:ListItem>
                                <asp:ListItem>1951</asp:ListItem>
                                <asp:ListItem>1950</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="year" ErrorMessage="Select year" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel22" runat="server" style="text-align: center; padding-top: 10%; width: 103%; margin-left: -1%;">
                    <asp:DropDownList ID="secquestion" runat="server" placeholder="Date of Birth" Width="98%" Height="35" style="border-radius: 7px; padding-left: 2%; outline: none; border: 1px solid black">
                        <asp:ListItem Selected="True" Hidden="True" Value="">Select a security question</asp:ListItem>
                        <asp:ListItem>What is your fav food?</asp:ListItem>
                        <asp:ListItem>Name of your fav sports personality?</asp:ListItem>
                        <asp:ListItem>What was your childhood nickname?</asp:ListItem>
                        <asp:ListItem>What is your birth place?</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="secquestion" ErrorMessage="Please select a security question" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </asp:Panel>
                <asp:Panel ID="Panel23" runat="server" style="text-align: center; padding-top: 5%; width: 100%;">
                    <asp:TextBox ID="secanswer" runat="server" placeholder="Answer to security question" Width="98%" Height="35" style="border-radius: 7px; padding-left: 2%; outline: none; border: 1px solid black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="secanswer" ErrorMessage="Please enter an answer for security question" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </asp:Panel>
                <asp:Panel ID="Panel24" runat="server" style="text-align: center; padding-top: 7%; width: 100%;">
                    <asp:Button ID="Button2" runat="server" Text="Submit" Height="35" OnClick="Button2_Click" style="border-radius: 7px; width: 50%; outline: none; border: 1px solid black; background-color: #42b72a; color: white; font-weight: bold;"/>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
        </asp:Panel>
    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT * FROM [user]"></asp:SqlDataSource>
</asp:Content>
