<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ShortlistSale.aspx.cs" Inherits="Project1.ShortlistSale" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .propcard{
            box-shadow:  1px 1px 1px #88888888;
        }
        .propcard:hover{
            box-shadow:  2px 2px 8px #88888888;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:Panel ID="Panel1" runat="server" Width="100%" style="z-index: 0;">
        <asp:Panel ID="Panel17" runat="server" style="overflow: auto; padding-left: 1%; padding-right: 1%;">
            <asp:Panel ID="Panel21" runat="server" style="overflow: auto; border-bottom: 1px solid black;">
            <asp:Panel ID="Panel18" runat="server" Width="10%" style="float: left; padding: 1%; padding-right: 0%; padding-left: 0%; padding-bottom: 0%;">
                <asp:Button ID="Button1" runat="server" Text="For Sale" Height="25px" Width="100%" BackColor="#1877f2" ForeColor="White" style="border: none; border: 1px solid black;" OnClick="Button1_Click" />
            </asp:Panel>
            <asp:Panel ID="Panel19" runat="server" Height="25px" Width="10%" style="float: left; padding: 1%; padding-left: 0%; padding-left: 0%; padding-bottom: 0%; position: relative;">
                <asp:Button ID="Button2" runat="server" Text="For Rent" Width="100%" BackColor="White" style="border: none; border:1px solid black; position: absolute; bottom: 0;" OnClick="Button2_Click" />
            </asp:Panel>
            <asp:Panel ID="Panel20" runat="server" Width="80%" style="float: left;">
            </asp:Panel>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel22" runat="server" Visible="false" style="overflow: auto; padding-right: 1%; text-align: center;">
            <asp:Panel ID="Panel23" runat="server" ForeColor="#999999" Height="50px" style="padding: 2%;">
                No Properties Shortlisted!
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <asp:Panel ID="Panel3" runat="server" Width="98%" style="padding: 1%; z-index: 0;">
                        <a href='Product.aspx?type=sale&id=<%# DataBinder.Eval(Container,"DataItem.pfsid")%>' style="text-decoration: none; color: black;">
                        <asp:Panel ID="Panel4" runat="server" Width="98%" Height="250px" CssClass="propcard" style="overflow: hidden; padding: 1%; position: relative; z-index: 0;" BorderStyle="Solid" BorderColor="Black" BorderWidth="1px">
                            <asp:Panel ID="Panel24" runat="server" Height="25px" style="position: absolute; right: 0; top: 0; padding: 5px; z-index: 0;">
                                <asp:Button ID="Button3" runat="server" Text="Remove from shortlisted" Height="25px" BackColor="#1877f2" ForeColor="White" CommandArgument='<%# DataBinder.Eval(Container,"DataItem.pfsid")%>' style="border: none; border:1px solid black;" OnClick="Button3_Click1" />
                            </asp:Panel>
                            <asp:Panel ID="Panel5" runat="server" Height="100%" Width="28%" style="text-align: center; float: left; overflow: hidden; z-index: 0;">
                                <asp:Image ID="Image1" runat="server" Height="100%" style="border-radius: 10px;" ImageUrl='<%# "~/Images/" + DataBinder.Eval(Container.DataItem,"pfsid").ToString() + "/Hall/HallImage1.jpg" %>' />
                            </asp:Panel>
                            <asp:Panel ID="Panel6" runat="server" Width="68%" style="float: left; padding: 1%; z-index: 0;">
                                <asp:Panel ID="Panel7" runat="server" Width="100%" Font-Size="X-Large" Font-Bold="true" style="padding: 1%; z-index: 0;">
                                    ₹ <%# DataBinder.Eval(Container, "DataItem.price").ToString().Length >= 8 ? 
                                            (float.Parse(DataBinder.Eval(Container, "DataItem.price").ToString())/10000000).ToString("0.00")+" Cr" 
                                            : 
                                            (float.Parse(DataBinder.Eval(Container, "DataItem.price").ToString())/100000).ToString("0.00")+" Lac" %>
                                </asp:Panel>
                                <asp:Panel ID="Panel8" runat="server" Width="100%" style="overflow: hidden; padding: 1%; z-index: 0;">
                                    <asp:Panel ID="Panel10" runat="server" Font-Size="Large" Height="25px" style="float: left; z-index: 0;">
                                        <%#DataBinder.Eval(Container,"DataItem.bedrooms")%> BHK Apartment
                                    </asp:Panel>
                                    <asp:Panel ID="Panel11" runat="server" Height="25px" style="float: left; padding-left: 1%; z-index: 0;">
                                        for rent in <%#DataBinder.Eval(Container,"DataItem.locality")%>, <%#DataBinder.Eval(Container,"DataItem.city")%>
                                    </asp:Panel>
                                </asp:Panel>
                                <asp:Panel ID="Panel9" runat="server" Width="100%" style="padding: 1%; overflow: hidden; z-index: 0;">
                                    <asp:Panel ID="Panel12" runat="server" style="float: left;">
                                        Carpet Area: <%#DataBinder.Eval(Container,"DataItem.carpet_area")%> 
                                    </asp:Panel>
                                    <asp:Panel ID="Panel13" runat="server" style="float: left; padding-left: 5%; z-index: 0;">
                                        Bathroom: <%#DataBinder.Eval(Container,"DataItem.bathrooms")%> 
                                    </asp:Panel>
                                    <asp:Panel ID="Panel14" runat="server" style="float: left; padding-left: 5%; z-index: 0;">
                                        Balconies: <%#DataBinder.Eval(Container,"DataItem.balconies")%> 
                                    </asp:Panel>
                                </asp:Panel>
                                <asp:Panel ID="Panel15" runat="server" Width="100%" style="padding: 1%; z-index: 0;">
                                    <%#DataBinder.Eval(Container,"DataItem.description")%> 
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="Panel16" runat="server" style="position: absolute; bottom: 0; right: 0; padding: 1%; z-index: 0;">
                                Posted on <%#DataBinder.Eval(Container,"DataItem.date")%>
                            </asp:Panel>
                        </asp:Panel>
                        </a>
                    </asp:Panel>
                </ItemTemplate>
            </asp:Repeater>
        </asp:Panel>
    </asp:Panel>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>