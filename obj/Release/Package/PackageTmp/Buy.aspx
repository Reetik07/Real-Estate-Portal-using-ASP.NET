<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="Project1.Buy" %>
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
    <asp:Panel ID="Panel1" runat="server" Width="100%">
        <asp:Panel ID="Panel2" runat="server">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <asp:Panel ID="Panel3" runat="server" Width="98%" style="padding: 1%;">
                        <a href="Product.aspx?type=sale&id=<%#DataBinder.Eval(Container,"DataItem.pfsid")%>" style="text-decoration: none; color: black;">
                        <asp:Panel ID="Panel4" runat="server" Width="98%" Height="250px" CssClass="propcard" style="overflow: hidden; padding: 1%; position: relative;" BorderStyle="Solid" BorderColor="Black" BorderWidth="1px">
                            <asp:Panel ID="Panel5" runat="server" Height="100%" Width="28%" style="text-align: center; float: left; overflow: hidden;">
                                <asp:Image ID="Image1" runat="server" Height="100%" style="border-radius: 10px;" ImageUrl='<%# "~/Images/" + DataBinder.Eval(Container.DataItem,"pfsid").ToString() + "/Hall/HallImage1.jpg" %>' />
                            </asp:Panel>
                            <asp:Panel ID="Panel6" runat="server" Width="68%" style="float: left; padding: 1%;">
                                <asp:Panel ID="Panel7" runat="server" Width="100%" Font-Size="X-Large" Font-Bold="true" style="padding: 1%;">
                                    ₹ <%# DataBinder.Eval(Container, "DataItem.price").ToString().Length >= 8 ? 
                                            (float.Parse(DataBinder.Eval(Container, "DataItem.price").ToString())/10000000).ToString("0.00")+" Cr" 
                                            : 
                                            (float.Parse(DataBinder.Eval(Container, "DataItem.price").ToString())/100000).ToString("0.00")+" Lac" %>
                                </asp:Panel>
                                <asp:Panel ID="Panel8" runat="server" Width="100%" style="overflow: hidden; padding: 1%;">
                                    <asp:Panel ID="Panel10" runat="server" Font-Size="Large" Height="25px" style="float: left;">
                                        <%#DataBinder.Eval(Container,"DataItem.bedrooms")%> BHK Apartment
                                    </asp:Panel>
                                    <asp:Panel ID="Panel11" runat="server" Height="25px" style="float: left; padding-left: 1%;">
                                        for sale in <%#DataBinder.Eval(Container,"DataItem.locality")%>, <%#DataBinder.Eval(Container,"DataItem.city")%>
                                    </asp:Panel>
                                </asp:Panel>
                                <asp:Panel ID="Panel9" runat="server" Width="100%" style="padding: 1%; overflow: hidden;">
                                    <asp:Panel ID="Panel12" runat="server" style="float: left;">
                                        Carpet Area: <%#DataBinder.Eval(Container,"DataItem.carpet_area")%> 
                                    </asp:Panel>
                                    <asp:Panel ID="Panel13" runat="server" style="float: left; padding-left: 5%;">
                                        Bathroom: <%#DataBinder.Eval(Container,"DataItem.bathrooms")%> 
                                    </asp:Panel>
                                    <asp:Panel ID="Panel14" runat="server" style="float: left; padding-left: 5%;">
                                        Balconies: <%#DataBinder.Eval(Container,"DataItem.balconies")%> 
                                    </asp:Panel>
                                </asp:Panel>
                                <asp:Panel ID="Panel15" runat="server" Width="100%" style="padding: 1%;">
                                    <%#DataBinder.Eval(Container,"DataItem.description")%> 
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="Panel16" runat="server" style="position: absolute; bottom: 0; right: 0; padding: 1%;">
                                Posted on <%#DataBinder.Eval(Container,"DataItem.date")%>
                            </asp:Panel>
                        </asp:Panel>
                        </a>
                    </asp:Panel>
                </ItemTemplate>
            </asp:Repeater>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
