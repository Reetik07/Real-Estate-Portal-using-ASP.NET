<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Project1.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="100%">
        <asp:Panel ID="Panel2" runat="server" Width="98%" style="padding: 1%;">
            <asp:Panel ID="Panel5" runat="server" Width="98%" Height="300px" BorderWidth="1px" BorderStyle="Solid" style="padding: 1%; box-shadow:  0px 0px 4px #88888888;">
                <asp:UpdatePanel ID="UpdatePanel1" Height="auto" Width="50%" BackColor="Black" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="Panel8" runat="server" Height="300px" Width="50%" style="text-align: center; border-radius: 10px; border: 1px black solid; background-size: auto 100%; background-repeat: no-repeat; background-position: center; float: left;">
                            <asp:Panel ID="Panel11" runat="server" Height="60%" Width="5%" style="float: left; padding-top: 130px;">
                                <asp:ImageButton ID="ImageButton3" runat="server" Width="100%" ImageUrl="~/arrow5.png" OnClick="ChangeImagePrev" />
                            </asp:Panel>
                            <asp:Panel ID="Panel10" runat="server" Height="60%" Width="5%" style="float: right; padding-top: 130px;">
                                <asp:ImageButton ID="ImageButton2" runat="server" Width="100%" ImageUrl="~/arrow4.png" OnClick="ChangeImageNext" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel9" runat="server" Width="48%" Height="300px" style="float: left;">
                            <asp:Panel ID="Panel13" runat="server" Width="100%" Font-Size="X-Large" Font-Bold="true" style="padding-left: 4%; padding-top: 2%;">
                                <asp:Label ID="Label3" runat="server" Text="[BHK]" />
                            </asp:Panel>
                            <asp:Panel ID="Panel14" runat="server" Width="100%" Font-Size="Large" style="padding-left: 4%; padding-top: 1%;">
                                <asp:Label ID="Label4" runat="server" Text="[locality]" />
                            </asp:Panel>
                            <asp:Panel ID="Panel15" runat="server" Width="100%" style="padding-left: 4%; padding-top: 5%;">
                                <asp:Panel ID="Panel16" runat="server" Width="33%" Font-Size="X-Large" Font-Bold="true" style="float: left;">
                                    <asp:Label ID="Label5" runat="server" Width="100%" Text="[Price]" />
                                </asp:Panel>
                                <asp:Panel ID="Panel17" runat="server" Width="33%" Font-Size="Large" style="float: left;">
                                    <asp:Label ID="Label6" runat="server" Width="100%" Font-Size="Larger" Text="[Carpet area]" />
                                    <asp:Label ID="Label11" runat="server" Width="100%">Carpet Area</asp:Label>
                                </asp:Panel>
                                <asp:Panel ID="Panel18" runat="server" Width="34%" Font-Size="Large" style="float: left;">
                                    <asp:Label ID="Label7" runat="server" Width="100%" Font-Size="Larger" Text="[? Bedrooms]" />
                                    <asp:Label ID="Label12" runat="server" Width="100%" Text="[? Bathrooms]" />
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="Panel19" runat="server" Width="100%" Font-Size="Large" style="padding-left: 4%; padding-top: 5%; float: left;">
                                <asp:Label ID="Label8" runat="server" Width="100%" Font-Size="Larger" Text="Posted by" />
                                <asp:Label ID="Label9" runat="server" Width="100%" Text="[Name]" />
                            </asp:Panel>
                            <asp:Panel ID="Panel20" runat="server" Width="100%" Font-Size="Large" style="padding-left: 2%; padding-top: 5%; float: left;">
                                <asp:Panel ID="Panel21" runat="server" Width="30%" style="padding: 2%;float: left;">
                                    <asp:Button ID="Button1" runat="server" Width="100%" Height="30px" BackColor="#1877f2" ForeColor="White" Text="Contact Owner" BorderStyle="None" OnClick="Button1_Click" />
                                </asp:Panel>
                                <asp:Panel ID="Panel22" runat="server" Width="30%" style="padding: 2%; float: left;">
                                    <asp:Button ID="Button2" runat="server" Width="100%" Height="30px" BackColor="#1877f2" ForeColor="White" Text="Shortlist" BorderStyle="None" OnClick="Button2_Click" />
                                </asp:Panel>
                            </asp:Panel>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Width="98%" style="padding: 1%; height: auto; ">
            <asp:Panel ID="Panel6" runat="server" Width="98%" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" style="padding: 1%; height: auto; box-shadow:  0px 0px 4px #88888888;">
                <asp:Panel ID="Panel12" runat="server" Width="100%">
                    <asp:Panel ID="Panel23" runat="server" Width="96%" style="overflow: auto; border-bottom: 0.5px rgba(115, 114, 114, 0.53) solid; padding: 2%; padding-top: 1%;">
                        <asp:Panel ID="Panel24" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel27" runat="server" Width="100%">
                                <asp:Label ID="Label10" runat="server" Text="Bedrooms" />
                            </asp:Panel>
                            <asp:Panel ID="Panel28" runat="server" Width="100%">
                                <asp:Label ID="Label13" runat="server" Text="[Bedrooms]" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel25" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel29" runat="server" Width="100%">
                                <asp:Label ID="Label14" runat="server" Text="Bathrooms" />
                            </asp:Panel>
                            <asp:Panel ID="Panel30" runat="server" Width="100%">
                                <asp:Label ID="Label15" runat="server" Text="[Bathrooms]" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel26" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel31" runat="server" Width="100%">
                                <asp:Label ID="Label16" runat="server" Text="Balconies" />
                            </asp:Panel>
                            <asp:Panel ID="Panel32" runat="server" Width="100%">
                                <asp:Label ID="Label17" runat="server" Text="[Balconies]" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel33" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel34" runat="server" Width="100%">
                                <asp:Label ID="Label18" runat="server" Text="Store Rooms" />
                            </asp:Panel>
                            <asp:Panel ID="Panel35" runat="server" Width="100%">
                                <asp:Label ID="Label19" runat="server" Text="[Store Rooms]" />
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel36" runat="server" Width="96%" style="overflow: auto; border-bottom: 0.5px  rgba(115, 114, 114, 0.53) solid; padding: 2%;">
                        <asp:Panel ID="Panel43" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel44" runat="server" Width="100%">
                                <asp:Label ID="Label24" runat="server" Text="Super area" />
                            </asp:Panel>
                            <asp:Panel ID="Panel45" runat="server" Width="100%">
                                <asp:Label ID="Label25" runat="server" Text="[Super area]" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel46" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel47" runat="server" Width="100%">
                                <asp:Label ID="Label26" runat="server" Text="Carpet area" />
                            </asp:Panel>
                            <asp:Panel ID="Panel48" runat="server" Width="100%">
                                <asp:Label ID="Label27" runat="server" Text="[Carpet area]" />
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel37" runat="server" Width="96%" style="overflow: auto; padding: 2%; padding-bottom: 1%;">
                        <asp:Panel ID="Panel38" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel39" runat="server" Width="100%">
                                <asp:Label ID="Label20" runat="server" Text="Status" />
                            </asp:Panel>
                            <asp:Panel ID="Panel40" runat="server" Width="100%">
                                <asp:Label ID="Label21" runat="server" Text="[Status]" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel41" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel42" runat="server" Width="100%">
                                <asp:Label ID="Label22" runat="server" Text="Transaction Type" />
                            </asp:Panel>
                            <asp:Panel ID="Panel49" runat="server" Width="100%">
                                <asp:Label ID="Label23" runat="server" Text="[Transaction Type]" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel50" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel51" runat="server" Width="100%">
                                <asp:Label ID="Label28" runat="server" Text="Floor" />
                            </asp:Panel>
                            <asp:Panel ID="Panel52" runat="server" Width="100%">
                                <asp:Label ID="Label29" runat="server" Text="[Floor]" />
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel53" runat="server" Width="25%" style="float: left;">
                            <asp:Panel ID="Panel54" runat="server" Width="100%">
                                <asp:Label ID="Label30" runat="server" Text="Car Parking" />
                            </asp:Panel>
                            <asp:Panel ID="Panel55" runat="server" Width="100%">
                                <asp:Label ID="Label31" runat="server" Text="[Car Parking]" />
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Width="98%" style="padding: 1%;">
            <asp:Panel ID="Panel7" runat="server" Width="98%" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" style="padding: 1%; box-shadow:  0px 0px 4px #88888888;">
                <asp:Panel ID="Panel56" runat="server" Width="100%">
                    <asp:Panel ID="Panel90" runat="server" Width="98%" style="border-bottom: 1px black solid; padding-left: 2%; padding-bottom: 1%;">
                        <asp:Label ID="Label52" runat="server" Text="Description" />
                    </asp:Panel>
                    <asp:Panel ID="Panel91" runat="server" Width="96%" style="overflow: auto; border-bottom: 0.5px rgba(115, 114, 114, 0.53) solid; padding: 2%;">
                        <asp:Panel ID="Panel92" runat="server" Width="100%" style="float: left;">
                            <asp:Label ID="Label53" runat="server" Text="[Description]" />
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel95" runat="server" Width="96%" style="overflow: auto; border-bottom: 0.5px rgba(115, 114, 114, 0.53) solid; padding: 2%;">
                        <asp:Panel ID="Panel96" runat="server" Width="20%" style="float: left;">
                            <asp:Label ID="Label55" runat="server" Text="Price" />
                        </asp:Panel>
                        <asp:Panel ID="Panel57" runat="server" Width="80%" style="float: left;">
                            <asp:Label ID="Label32" runat="server" Text="[Price]" />
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel58" runat="server" Width="96%" style="overflow: auto; border-bottom: 0.5px rgba(115, 114, 114, 0.53) solid; padding: 2%;">
                        <asp:Panel ID="Panel59" runat="server" Width="20%" style="float: left;">
                            <asp:Label ID="Label33" runat="server" Text="Booking Amount" />
                        </asp:Panel>
                        <asp:Panel ID="Panel60" runat="server" Width="80%" style="float: left;">
                            <asp:Label ID="Label34" runat="server" Text="[Booking Amount]" />
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel61" runat="server" Width="96%" style="overflow: auto; border-bottom: 0.5px rgba(115, 114, 114, 0.53) solid; padding: 2%;">
                        <asp:Panel ID="Panel62" runat="server" Width="20%" style="float: left;">
                            <asp:Label ID="Label35" runat="server" Text="Address" />
                        </asp:Panel>
                        <asp:Panel ID="Panel63" runat="server" Width="80%" style="float: left;">
                            <asp:Label ID="Label36" runat="server" Text="[Address]" />
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel64" runat="server" Width="96%" style="overflow: auto; border-bottom: 0.5px rgba(115, 114, 114, 0.53) solid; padding: 2%;">
                        <asp:Panel ID="Panel65" runat="server" Width="20%" style="float: left;">
                            <asp:Label ID="Label37" runat="server" Text="Age of Construction" />
                        </asp:Panel>
                        <asp:Panel ID="Panel66" runat="server" Width="80%" style="float: left;">
                            <asp:Label ID="Label38" runat="server" Text="[Age of Construction]" />
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel70" runat="server" Width="96%" style="overflow: auto; border-bottom: 0.5px rgba(115, 114, 114, 0.53) solid; padding: 2%;">
                        <asp:Panel ID="Panel71" runat="server" Width="20%" style="float: left;">
                            <asp:Label ID="Label1" runat="server" Text="Tenants Preferred" />
                        </asp:Panel>
                        <asp:Panel ID="Panel72" runat="server" Width="80%" style="float: left;">
                            <asp:Label ID="Label2" runat="server" Text="[Tenants Preferred]" />
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel67" runat="server" Width="96%" style="overflow: auto; padding: 2%; padding-bottom: 1%;">
                        <asp:Panel ID="Panel68" runat="server" Width="20%" style="float: left;">
                            <asp:Label ID="Label39" runat="server" Text="Furnishing" />
                        </asp:Panel>
                        <asp:Panel ID="Panel69" runat="server" Width="80%" style="float: left;">
                            <asp:Label ID="Label40" runat="server" Text="[Furnishing]" />
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
