<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PostProperty.aspx.cs" Inherits="Project1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Width="100%" style="padding-top: 5%; padding-bottom: 5%; ">
        <asp:Panel ID="Panel2" runat="server" Width="75%" BorderWidth="1px" BorderColor="Black" BorderStyle="Solid" style="margin-left: auto; margin-right: auto;">
            <asp:Panel ID="Panel3" runat="server" style="padding: 2%;">
                <asp:Panel ID="Panel4" runat="server" Font-Size="200%">
                    Post Property
                </asp:Panel>
                <hr/>
                <!-- Properties Detail 1 Panel -->
                <asp:Panel ID="Panel5" runat="server">
                    <asp:Panel ID="Panel7" runat="server" Width="100%" Height="50px">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="50%" Height="30px" >
                            <asp:ListItem Value="" Selected="True" Hidden="True">Property for ...</asp:ListItem>
                            <asp:ListItem>Sale</asp:ListItem>
                            <asp:ListItem>Rent / Lease</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select an option" ControlToValidate="DropDownList2" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:Panel>
                    <asp:Panel ID="Panel8" runat="server" Width="100%" Height="50px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="50%" Height="30px">
                            <asp:ListItem Value="" Selected="True" Hidden="True">Select Property Type</asp:ListItem>
                            <asp:ListItem>Flat /Apartment</asp:ListItem>
                            <asp:ListItem>Residential House</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please selct a property type" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:Panel>
                    <asp:Panel ID="Panel71" runat="server" Width="100%" Height="50px">
                        <asp:DropDownList ID="DropDownList6" runat="server" Width="50%" Height="30px">
                            <asp:ListItem Value="" Selected="True" Hidden="True">Select Transaction Type</asp:ListItem>
                            <asp:ListItem>New Property</asp:ListItem>
                            <asp:ListItem>Resale</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="Please selct a transaction type" ControlToValidate="DropDownList6" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:Panel>
                    <asp:Panel ID="Panel85" runat="server" Width="100%" Height="50px" style="float: left;">
                        <asp:DropDownList ID="DropDownList7" runat="server" Width="50%" Height="30px">
                            <asp:ListItem Value="" Selected="True" Hidden="True">Property Status</asp:ListItem>
                            <asp:ListItem>Under Construction</asp:ListItem>
                            <asp:ListItem>Ready to Move</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="Please select a property status" ControlToValidate="DropDownList7" ForeColor="Red"></asp:RequiredFieldValidator>
                    </asp:Panel>
                    <asp:Panel ID="Panel9" runat="server" Width="100%" Height="50px">
                        <asp:Panel ID="Panel10" runat="server" Width="100%" Height="30px" style="padding-bottom: 7%;">
                            Property Location:
                        </asp:Panel>
                        <asp:Panel ID="Panel11" runat="server" Width="50%" style="float: left;">
                            <asp:Panel ID="Panel6" runat="server" Width="100%">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter city name" Width="80%" Height="30px"></asp:TextBox>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a city name" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel12" runat="server" Width="50%" style="float: left;">
                            <asp:Panel ID="Panel53" runat="server">
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter locality name" Width="80%" Height="30px"></asp:TextBox>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a locality name" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel13" runat="server" Width="100%" Height="50px" HorizontalAlign="Center" style="padding-top: 10%;">
                        <asp:Button ID="Button1" runat="server" Text="Next" BackColor="#42B72A" BorderStyle="None" ForeColor="White" Height="30px" Width="20%" OnClick="Button1_Click" />
                    </asp:Panel>
                </asp:Panel>
                <!-- Property Details 2 Panel -->
                <asp:Panel ID="Panel14" runat="server" Visible="False" style="padding-bottom: 250px;">
                    <asp:Panel ID="Panel15" runat="server">
                        <asp:Panel ID="Panel16" runat="server" Width="50%" Height="70px" style="float: left;">
                            <asp:Panel ID="Panel54" runat="server" Width="100%">
                                <asp:TextBox ID="TextBox3" runat="server" placeholder="No. of Bedrooms" Width="80%" Height="30px"></asp:TextBox>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter no. of bedrooms" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Invalid no. of bedrooms" ForeColor="Red" ValidationExpression="\d"></asp:RegularExpressionValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel17" runat="server" Width="50%" Height="70px" style="float: left;">
                            <asp:Panel ID="Panel55" runat="server" Width="100%">
                                <asp:TextBox ID="TextBox4" runat="server" placeholder="No. of Bathrooms" Width="80%" Height="30px"></asp:TextBox>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter no.of bathrooms" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Invalid no. of bathrooms" ForeColor="Red" ValidationExpression="\d"></asp:RegularExpressionValidator>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel18" runat="server">
                        <asp:Panel ID="Panel19" runat="server" Width="50%" Height="70px" style="float: left;">
                            <asp:Panel ID="Panel56" runat="server" Width="100%">
                                <asp:TextBox ID="TextBox6" runat="server" placeholder="No. of Balconies" Width="80%" Height="30px"></asp:TextBox>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter no. of balconies" ControlToValidate="TextBox6" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Invalid no. of balconies" ForeColor="Red" ValidationExpression="\d"></asp:RegularExpressionValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel20" runat="server" Width="50%" Height="70px" style="float: left;">
                            <asp:Panel ID="Panel57" runat="server" Width="100%">
                                <asp:TextBox ID="TextBox7" runat="server" placeholder="No. of store rooms" Width="80%" Height="30px"></asp:TextBox>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter no. of store rooms" Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Invalid no. of store rooms" ForeColor="Red" ValidationExpression="\d"></asp:RegularExpressionValidator>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel21" runat="server">
                        <asp:Panel ID="Panel51" runat="server" Width="50%" Height="70px" style="float: left;">
                            <asp:Panel ID="Panel58" runat="server" Width="100%">
                                <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Built up area in sq.ft" Width="80%" Height="30px"></asp:TextBox>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter built up area." ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Invalid built up area" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel52" runat="server" Width="50%" Height="70px" style="float: left;">
                            <asp:Panel ID="Panel59" runat="server" Width="100%">
                                <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Carpet area in sq.ft." Width="80%" Height="30px"></asp:TextBox>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter carpet area" ControlToValidate="TextBox8" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="Invalid carpet area" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel79" runat="server">
                        <asp:Panel ID="Panel80" runat="server" Width="50%" Height="70px" style="float: left;">
                            <asp:Panel ID="Panel81" runat="server" Width="100%">
                                <asp:TextBox ID="TextBox15" runat="server" placeholder="Enter no. of parking" Width="80%" Height="30px"></asp:TextBox>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="Please enter no. of parking" ControlToValidate="TextBox15" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox15" Display="Dynamic" ErrorMessage="Invalid no. of parking" ForeColor="Red" ValidationExpression="\d"></asp:RegularExpressionValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel86" runat="server" Width="50%" Height="70px" style="float: left;">
                            <asp:Panel ID="Panel90" runat="server" Width="100%">
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="80%" Height="30px">
                                    <asp:ListItem Value="" Selected="True" Hidden="True">Parking Type</asp:ListItem>
                                    <asp:ListItem>None</asp:ListItem>
                                    <asp:ListItem>Open</asp:ListItem>
                                    <asp:ListItem>Closed</asp:ListItem>
                                </asp:DropDownList>
                            </asp:Panel>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="Please select parking type" ControlToValidate="DropDownList3" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel22" runat="server" Width="100%" Height="50px" HorizontalAlign="Center" style="padding-top: 5%;">
                        <asp:Panel ID="Panel23" runat="server" Width="46%" Height="50px" style="float: left; padding:2%;">
                            <asp:Button ID="Button2" runat="server" Text="Back" BackColor="#42B72A" BorderStyle="None" ForeColor="White" Height="30px" Width="40%" style="float: right;" OnClick="Button2_Click" CausesValidation="False" />
                        </asp:Panel>
                        <asp:Panel ID="Panel24" runat="server" Width="46%" Height="50px" style="float: right; padding:2%;">
                            <asp:Button ID="Button3" runat="server" Text="Next" BackColor="#42B72A" BorderStyle="None" ForeColor="White" Height="30px" Width="40%" style="float: left;" OnClick="Button3_Click" />
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
                <!-- Property Details - 3 -->
                <asp:Panel ID="Panel66" runat="server" Visible="False" style="padding-bottom: 10px">
                    <asp:Panel ID="Panel67" runat="server">
                        <asp:Panel ID="Panel70" runat="server" Width="98%" style="float: left; padding-left: 1%; padding-top: 3%; ">
                            <asp:Panel ID="Panel91" runat="server" Width="50%" Height="70px" style="float: left;">
                                <asp:Panel ID="Panel93" runat="server" Width="100%">
                                    <asp:TextBox ID="TextBox16" runat="server" placeholder="Enter Age of Construction in years" Width="80%" Height="30px"></asp:TextBox>
                                </asp:Panel>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="Please enter age of construction" ControlToValidate="TextBox16" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox16" Display="Dynamic" ErrorMessage="Invalid age of construction" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </asp:Panel>
                            <asp:Panel ID="Panel92" runat="server" Width="50%" Height="70px" style="float: left;">
                                <asp:Panel ID="Panel94" runat="server" Width="100%">
                                    <asp:DropDownList ID="DropDownList5" runat="server" Width="80%" Height="30px">
                                        <asp:ListItem Value="" Selected="True" Hidden="True">Furnished Status</asp:ListItem>
                                        <asp:ListItem>Furnished</asp:ListItem>
                                        <asp:ListItem>Semi-Furnished</asp:ListItem>
                                        <asp:ListItem>Unfurnished</asp:ListItem>
                                    </asp:DropDownList>
                                </asp:Panel>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Please select a furnished status" ControlToValidate="DropDownList5" ForeColor="Red"></asp:RequiredFieldValidator>
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel69" runat="server" Width="98%" style="float: left; padding-left: 1%; padding-bottom: 3%;">
                            <asp:Panel ID="Panel68" runat="server" Width="50%" style="float: left;">
                                <asp:Panel ID="Panel87" runat="server" Width="100%">
                                    <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter floor no." Width="80%" Height="30px"></asp:TextBox>
                                </asp:Panel>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Please enter floor no." ControlToValidate="TextBox9" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="Invalid floor no." ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </asp:Panel>
                            <asp:Panel ID="Panel88" runat="server" Width="50%" style="float: left;">
                                <asp:Panel ID="Panel89" runat="server" Width="100%">
                                    <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter Total no. of floors" Width="80%" Height="30px"></asp:TextBox>
                                </asp:Panel>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Please enter total no. of floors" ControlToValidate="TextBox10" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="Invalid total no. of floors" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel78" runat="server" style="padding: 1%;">
                            <asp:TextBox ID="TextBox14" runat="server" Width="98%" Height="50px" placeholder="Enter address of the property" TextMode="MultiLine" style="padding: 1%;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox14" Display="Dynamic" ErrorMessage="Please enter address" ForeColor="Red"></asp:RequiredFieldValidator>
                        </asp:Panel>
                        <asp:Panel ID="Panel72" runat="server" Width="98%" style="padding-left: 1%; padding-top: 3%; float: left;">
                            <asp:Panel ID="Panel73" runat="server" Width="50%" Height="70px" style="float: left;">
                                <asp:Panel ID="Panel74" runat="server" Width="100%">
                                    <asp:TextBox ID="TextBox11" runat="server" placeholder="Enter price" Width="80%" Height="30px"></asp:TextBox>
                                </asp:Panel>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Please enter a price" ControlToValidate="TextBox11" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBox11" Display="Dynamic" ErrorMessage="Invalid price" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </asp:Panel>
                            <asp:Panel ID="Panel75" runat="server" Width="50%" Height="70px" style="float: left;">
                                <asp:Panel ID="Panel76" runat="server" Width="100%">
                                    <asp:TextBox ID="TextBox12" runat="server" placeholder="Enter token amount" Width="80%" Height="30px"></asp:TextBox>
                                </asp:Panel>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Please enter token amount" Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox12"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TextBox12" Display="Dynamic" ErrorMessage="Invalid token amount" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel95" runat="server" Width="98%" style="float: left; padding-left: 1%; padding-top: 0.5%; ">
                            <asp:Panel ID="Panel98" runat="server" Width="50%" Height="70px" style="float: left;">
                                <asp:Panel ID="Panel99" runat="server" Width="100%">
                                    <asp:DropDownList ID="DropDownList4" runat="server" Width="80%" Height="30px">
                                        <asp:ListItem Value="" Selected="True" Hidden="True">Tenants Preferred</asp:ListItem>
                                        <asp:ListItem>Bachelors</asp:ListItem>
                                        <asp:ListItem>Family</asp:ListItem>
                                        <asp:ListItem>Bachelors/Family</asp:ListItem>
                                    </asp:DropDownList>
                                </asp:Panel>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ErrorMessage="Please select a furnished status" ControlToValidate="DropDownList5" ForeColor="Red"></asp:RequiredFieldValidator>
                            </asp:Panel>
                        </asp:Panel>
                        <asp:Panel ID="Panel77" runat="server" style="padding: 1%;">
                            <asp:TextBox ID="TextBox13" runat="server" Width="98%" Height="100px" placeholder="Enter a description of your property" TextMode="MultiLine" style="padding: 1%;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="TextBox13" Display="Dynamic" ErrorMessage="Please enter a description" ForeColor="Red"></asp:RequiredFieldValidator>
                        </asp:Panel>
                    </asp:Panel>
                   
                    <asp:Panel ID="Panel82" runat="server" Width="100%" Height="50px" HorizontalAlign="Center" style="padding-top: 5%;">
                        <asp:Panel ID="Panel83" runat="server" Width="46%" Height="50px" style="float: left; padding:2%;">
                            <asp:Button ID="Button6" runat="server" Text="Back" BackColor="#42B72A" BorderStyle="None" ForeColor="White" Height="30px" Width="40%" style="float: right;" CausesValidation="False" OnClick="Button6_Click" />
                        </asp:Panel>
                        <asp:Panel ID="Panel84" runat="server" Width="46%" Height="50px" style="float: right; padding:2%;">
                            <asp:Button ID="Button7" runat="server" Text="Next" BackColor="#42B72A" BorderStyle="None" ForeColor="White" Height="30px" Width="40%" style="float: left;" OnClick="Button7_Click" />
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
                <!-- Images Upload Panel -->
                <asp:Panel ID="Panel25" runat="server" Visible="False" style="height: 100px;">
                    <asp:Panel ID="Panel26" runat="server">
                        <asp:Panel ID="Panel44" runat="server">
                            Upload Images of your property
                        </asp:Panel>
                        <asp:Panel ID="Panel27" runat="server">
                            <asp:Panel ID="Panel36" runat="server" Width="48%" style="float: left; padding: 1%;">
                                <asp:Panel ID="Panel30" runat="server">
                                    Hall
                                </asp:Panel>
                                <asp:Panel ID="Panel31" runat="server">
                                    <asp:Panel ID="Panel60" runat="server" Width="100%">
                                        <asp:FileUpload ID="FileUpload5" runat="server" AllowMultiple="true" />
                                    </asp:Panel>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Upload hall images" Display="Dynamic" ForeColor="Red" ControlToValidate="FileUpload5"></asp:RequiredFieldValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="Panel28" runat="server" Width="48%" style="float: left; padding: 1%;">
                                <asp:Panel ID="Panel32" runat="server">
                                    Bedroom
                                </asp:Panel>
                                <asp:Panel ID="Panel37" runat="server">
                                    <asp:Panel ID="Panel61" runat="server" Width="100%">
                                        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
                                    </asp:Panel>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Upload Bedroom images" ForeColor="Red" ControlToValidate="FileUpload1" Display="Dynamic"></asp:RequiredFieldValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="Panel47" runat="server" Width="48%" style="float: left; padding: 1%;">
                                <asp:Panel ID="Panel48" runat="server">
                                    Kitchen
                                </asp:Panel>
                                <asp:Panel ID="Panel49" runat="server">
                                    <asp:Panel ID="Panel62" runat="server" Width="100%">
                                        <asp:FileUpload ID="FileUpload6" runat="server" AllowMultiple="true" />
                                    </asp:Panel>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Upload kitchen images" ControlToValidate="FileUpload6" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="Panel40" runat="server" Width="48%" style="float: left; padding: 1%;">
                                <asp:Panel ID="Panel39" runat="server">
                                    Bathroom
                                </asp:Panel>
                                <asp:Panel ID="Panel41" runat="server">
                                    <asp:Panel ID="Panel63" runat="server" Width="100%">
                                        <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" />
                                    </asp:Panel>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Upload bathroom images" ControlToValidate="FileUpload2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="Panel29" runat="server" Width="48%" style="float: left; padding: 1%;">
                                <asp:Panel ID="Panel42" runat="server">
                                    Balcony
                                </asp:Panel>
                                <asp:Panel ID="Panel43" runat="server">
                                    <asp:Panel ID="Panel64" runat="server" Width="100%">
                                        <asp:FileUpload ID="FileUpload3" runat="server" AllowMultiple="true" />
                                    </asp:Panel>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Upload balcony images" ControlToValidate="FileUpload3" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="Panel38" runat="server" Width="48%" style="float: left; padding: 1%;">
                                <asp:Panel ID="Panel45" runat="server">
                                    Store Room
                                </asp:Panel>
                                <asp:Panel ID="Panel46" runat="server">
                                    <asp:Panel ID="Panel65" runat="server" Width="100%">
                                        <asp:FileUpload ID="FileUpload4" runat="server" AllowMultiple="true" />
                                    </asp:Panel>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Upload store room images" ControlToValidate="FileUpload4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel ID="Panel50" runat="server" Width="50%" style="float: left;">
                                
                            </asp:Panel>
                        </asp:Panel>                 
                    </asp:Panel>
                    <asp:Panel ID="Panel33" runat="server" Width="100%" Height="50px" HorizontalAlign="Center" style="float: left;">
                        <asp:Panel ID="Panel34" runat="server" Width="46%" Height="50px" style="float: left; padding:2%;">
                            <asp:Button ID="Button4" runat="server" Text="Back" BackColor="#42B72A" BorderStyle="None" ForeColor="White" Height="30px" Width="40%" style="float: right;" OnClick="Button4_Click" CausesValidation="False" />
                        </asp:Panel>
                        <asp:Panel ID="Panel35" runat="server" Width="46%" Height="50px" style="float: right; padding:2%;">
                            <asp:Button ID="Button5" runat="server" Text="Submit" BackColor="#42B72A" BorderStyle="None" ForeColor="White" Height="30px" Width="40%" style="float: left;" OnClick="Button5_Click" />
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
