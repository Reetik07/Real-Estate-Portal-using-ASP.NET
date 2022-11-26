<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Project1.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="padding-left: 25%; padding-right: 25%; padding-top: 5%; padding-bottom: 5%; z-index: 0;">
        <asp:Panel ID="Panel2" runat="server" style="border: solid 1px black; box-shadow: 4px 4px 4px #88888888; border-radius: 20px;">
            <asp:Panel ID="Panel3" runat="server" style=" text-align: center;">
                <asp:Panel ID="Panel4" runat="server" style="text-align: center; width: 100%;">
                    <asp:Panel ID="Panel5" runat="server">
                        <asp:Panel ID="Panel6" runat="server">
                            <asp:Panel ID="Panel7" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 5%;">
                                <asp:TextBox ID="fpemail" runat="server" Width="100%" Height="25px" placeholder="Enter Email ID" style="border-radius: 5px; border: solid 1px black;"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fpemail" ErrorMessage="Email ID required" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                            </asp:Panel>
                            <asp:Panel ID="Panel8" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 5%; padding-bottom: 5%;">
                                <asp:Button ID="Button1" runat="server" Text="Next" BackColor="#42B72A" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" style="border: solid 1px black; width: 40%; border-radius: 5px; " Height="30px"/>
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel9" runat="server">
                        <asp:Panel ID="Panel10" runat="server">
                            <asp:Panel ID="Panel11" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 5%;">
                                <asp:Label ID="fpsecq" runat="server" Width="100%" Height="25px" style="border-radius: 5px; border: solid 1px black;"></asp:Label>
                            </asp:Panel>
                            <asp:Panel ID="Panel12" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 5%;">
                                <asp:TextBox ID="fpseca" runat="server" Width="100%" Height="25px" placeholder="Enter answer for security question" style="border-radius: 5px; border: solid 1px black;"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fpseca" ErrorMessage="Answer for security question is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="Panel13" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 5%; padding-bottom: 5%;">
                                <asp:Button ID="Button2" runat="server" Text="Next" BackColor="#42B72A" Font-Bold="True" ForeColor="White" OnClick="Button2_Click" style="border: solid 1px black; width: 40%; border-radius: 5px; " Height="30px"/>
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel14" runat="server">
                    <asp:Panel ID="Panel15" runat="server">
                        <asp:Panel ID="Panel16" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 5%;">
                            We have mailed you the password, kindly check your registered email.
                        </asp:Panel>
                        <asp:Panel ID="Panel17" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 5%; padding-bottom: 5%;">
                            <asp:Button ID="Button3" runat="server" Text="Login" BackColor="#42B72A" Font-Bold="True" ForeColor="White" style="border: solid 1px black; width: 40%; border-radius: 5px;" PostBackUrl="~/Login.aspx" Height="30px" />
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
