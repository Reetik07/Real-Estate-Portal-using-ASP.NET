<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Project1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 379px; width: 100%;">
        <div style="float: left; width: 40%; padding-left: 10%; padding-top: 10%; font-size: 140%;">
            LoanBuddy helps you to stay updated with the latest loan offers from various providers which could fulfill all your dreams.</div>
        <div style="float: right; width: 40%; padding: 5%;">
            <div style="width: 75%; margin: auto; padding: 5%;">
                <div style="width: 90%; margin: auto; padding: 5%; border: solid 1px black; border-radius: 10px; box-shadow: 4px 4px 4px #88888888;">
                    <div style="width: 90%; margin: auto; text-align: center; padding: 5%;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="100%" Height="30" placeholder="Email ID" style="border-radius: 5px; outline: none; border: solid 1px black; "></asp:TextBox>
                        <br />
                    </div>
                    <div style="width: 90%; margin: auto; text-align: center; padding: 5%;">
                        <asp:TextBox ID="TextBox2" runat="server" Width="100%" Height="30" placeholder="Password" TextMode="Password" style="border-radius: 5px; outline: none; border: solid 1px black; "></asp:TextBox>
                        <br />
                    </div>
                    <div style="width: 90%; margin: auto; text-align: center; padding: 5%;">
                        <asp:Button ID="Button1" runat="server" Text="Login" Width="100%" Height="30" style="border-radius: 5px; outline: none; border: solid 1px black; background-color: #42b72a; color: white; font-weight: bold;" OnClick="Button1_Click" />
                        <br />
                    </div>
                    <div style="width: 90%; margin: auto; text-align: center; padding: 3%;">
                        <a href="ForgotPassword.aspx" style="text-decoration: none; color: #1877f2;">Forgotten password?</a>
                    </div>
                    <div>
                        <hr />
                    </div>
                    <div style="width: 60%; margin: auto; text-align: center; padding: 5%;">
                        <asp:Button ID="Button2" runat="server" Text="Create New Account" Width="100%" Height="30" style="border-radius: 5px; outline: none; border: solid 1px black; color: white; font-weight: bold;" PostBackUrl="~/Registration.aspx" BackColor="#1877f2" />
                        <br />
                    </div>
                </div>
                <!--
                <div style="width: 90%; margin: auto; text-align: center; padding: 5%;">
                    Don't have an account? <a href="Registration.aspx">Sign Up</a>
                </div>
                    #1877f2
                    #42b72a
                -->
            </div>
        </div>
    </div>
</asp:Content>
