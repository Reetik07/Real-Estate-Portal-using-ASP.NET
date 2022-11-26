<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="height: 379px; width: 100%;">
        <asp:Panel ID="Panel2" runat="server" style="float: left; width: 40%; padding-left: 10%; padding-top: 15%; font-size: 140%;">
            PropertyHunt helps you to buy, rent or sell residential and commercial properties with an ease.</asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="float: right; width: 40%; padding: 5%;">
            <asp:Panel ID="Panel4" runat="server" style="width: 75%; margin: auto; padding: 5%;">
                <asp:Panel ID="Panel5" runat="server" style="width: 90%; margin: auto; padding: 5%; border: solid 1px black; border-radius: 10px; box-shadow: 4px 4px 4px #88888888;">
                    <asp:Panel ID="Panel6" runat="server" style="width: 90%; margin: auto; text-align: center; padding: 5%;">
                        <asp:TextBox ID="loginemail" runat="server" Width="100%" Height="30" placeholder="Email ID" style="border-radius: 5px; outline: none; border: solid 1px black; "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="loginemail" ErrorMessage="Enter Email ID" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </asp:Panel>
                    <asp:Panel ID="Panel7" runat="server" style="width: 90%; margin: auto; text-align: center;">
                        <asp:TextBox ID="loginpassword" runat="server" Width="100%" Height="30" placeholder="Password" TextMode="Password" style="border-radius: 5px; outline: none; border: solid 1px black; "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginpassword" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    </asp:Panel>
                    <asp:Panel ID="Panel8" runat="server" style="width: 90%; margin: auto; text-align: center; padding: 5%;">
                        <asp:Button ID="Button1" runat="server" Text="Login" Width="100%" Height="30" style="border-radius: 5px; outline: none; border: solid 1px black; background-color: #42b72a; color: white; font-weight: bold;" OnClick="Button1_Click"/>
                        <br />
                    </asp:Panel>
                    <asp:Label ID="wrongcredmsg" runat="server" ForeColor="Red" Height="30" Text="Incorrect Email ID or Password" Visible="false" Width="100%" style="text-align: center;"/>
                    <asp:Panel ID="Panel9" runat="server" style="width: 90%; margin: auto; text-align: center; padding: 3%;">
                        <a href="ForgotPassword.aspx" style="text-decoration: none; color: #1877f2;">Forgotten password?</a>
                    </asp:Panel>
                    <asp:Panel ID="Panel10" runat="server">
                        <hr />
                    </asp:Panel>
                    <asp:Panel ID="Panel11" runat="server" style="width: 60%; margin: auto; text-align: center; padding: 5%;">
                        <asp:Hyperlink ID="HyperLink" runat="server" Text="Create New Account" Width="100%" Height="30px" style="border-radius: 5px; outline: none; border: solid 1px black; color: white; padding-top: 4%; text-decoration: none;" NavigateUrl="~/Registration.aspx" BackColor="#1877F2" Font-Bold="True" />
                        <br />
                    </asp:Panel>
                </asp:Panel>
                <!--
                <div style="width: 90%; margin: auto; text-align: center; padding: 5%;">
                    Don't have an account? <a href="Registration.aspx">Sign Up</a>
                </div>
                    #1877f2
                    #42b72a
                -->
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
