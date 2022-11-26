<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Project1.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="padding-left: 25%; padding-right: 25%; padding-top: 5%; padding-bottom: 5%; z-index: 0;">
        <asp:Panel ID="Panel2" runat="server" style="border: solid 1px black; box-shadow: 4px 4px 4px #88888888; border-radius: 20px;">
            <asp:Panel ID="Panel3" runat="server" style=" text-align: center;">
                <asp:Panel ID="Panel4" runat="server" style="text-align: center; width: 100%;">
                    <asp:Panel ID="Panel5" runat="server">
                        <asp:Panel ID="Panel6" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 5%;">
                            <asp:TextBox ID="cpop" runat="server" Width="100%" Height="25px" placeholder="Enter Old Password" style="border-radius: 5px; border: solid 1px black;" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cpop" ErrorMessage="Please enter your old password" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Incorrect old password"></asp:Label>
                        </asp:Panel>
                        <asp:Panel ID="Panel7" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 4%;">
                            <asp:TextBox ID="cpnpwd" runat="server" Width="100%" Height="25px" placeholder="Enter New Password" style="border-radius: 5px; border: solid 1px black;" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cpnpwd" ErrorMessage="Please enter your new password" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cpop" ControlToValidate="cpnpwd" ErrorMessage="New Password should not be same as old password" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel8" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 1%;">
                            <asp:TextBox ID="cprnpwd" runat="server" Width="100%" Height="25px" placeholder="Re-enter New Password" style="border-radius: 5px; border: solid 1px black;" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cprnpwd" ErrorMessage="Please re-enter your new password" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="cpnpwd" ControlToValidate="cprnpwd" ErrorMessage="Re-entered password must be same" ForeColor="Red"></asp:CompareValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel9" runat="server" style="width: 90%; margin: auto; text-align: center; padding-top: 2%; padding-bottom: 5%;">
                            <asp:Button ID="Button1" runat="server" Text="Next" Height="25px" BackColor="#42B72A" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" style="border: solid 1px black; width: 40%; border-radius: 5px; "/>
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
