<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="Admin_StudentDetails, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register src="../CtrlCommandAdv.ascx" tagname="CtrlCommandAdv" tagprefix="uc2" %>
<%@ Register Src="~/CtrlCommandAdv.ascx" TagPrefix="uc1" TagName="CtrlCommandAdv" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .table th {background-color: white;text-align: center;
        }
    </style>
    <div style="text-align:center !important;background-color:whitesmoke;">
 <div  style="height:380px;overflow:scroll;">
    <asp:GridView ID="GrdVwRecords" runat="server" CssClass="table table-bordered" AllowPaging="True" PageSize="1" AutoGenerateColumns="False" OnRowDataBound="GrdVwRecords_RowDataBound">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                   <asp:Label ID="LblName" runat="server" SkinID="LblBoldCenter" Text="" Width="100%" /></td>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="card"">
                        <table class="table table-borderless profile-table">
                            <tbody>
                                <tr>
                                    <td class="PrfRow">
                                        <asp:Label ID="Lbl0" runat="server" Text="Last Name" Width="100%"></asp:Label>
                                    </td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow">
                                       <%# Eval("LastName") %>
                                    </td>
                                    <td rowspan="3">
                                        <asp:Image ID="ImgProfPicMod" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Parent Name</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblParentName" runat="server" SkinID="LblNormal" Text='<%#Eval("ParentName")%>' />
                                    </td>
                                </tr>
                                 <tr>
                                    <td class="PrfRow">Date of Birth</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblDob" runat="server" SkinID="LblNormal" Text='<%#Eval("Dob","{0:dd MMM yyyy}") %>' />
                                    </td>
                                     <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Email</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblEmail" runat="server" SkinID="LblNormal" Text='<%#Eval("Email")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Phone No.</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblAdd1" runat="server" SkinID="LblNormal" Text='<%#Eval("PhoneNo")%>' Width="100%"/>
                                    </td>
                                     <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Mobile No</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblAdd2" runat="server" SkinID="LblNormal" Text='<%#Eval("MobNo")%>' />
                                    </td>
                                     <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Permanent Address</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblPAddress" runat="server" SkinID="LblNormal" Text='<%#Eval("PAddress")%>' />
                                    </td>
                                     <td></td>
                                </tr>
                               
                                <tr>
                                    <td class="PrfRow">Contact Address</td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblCAddress" runat="server" SkinID="LblNormal" Text='<%#Eval("CAddress") %>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Country</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblNationality" runat="server" SkinID="LblNormal" Text='<%#Eval("Nationality")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">State</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblStateName" runat="server" SkinID="LblNormal" Text='<%#Eval("StateName")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">City</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblCity" runat="server" SkinID="LblNormal" Text='<%#Eval("City")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                     <div class="card">
                    <div class="PrfSubHdr">
                        <h5 class="mb-0">Educational Details</h5>
                    </div>  <br />
                        <div class="row">   
                              <asp:Repeater runat="server" ID="RptrEduDetails">
                                    <ItemTemplate>
                                        <div class="col-sm-4 col-xl-4">
                                        <div class="card card-body" style="background-color:#fafafa">
                                        <div class="media">
                                        <div style="text-align: left;">
                                            <h8 class="ViewTabMain"><b>Academic Level  :- </b><asp:Label ID="Label1" Text='<%#Eval("Name")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                            <br /><h8 class="ViewTabMain"><b>Institution :- </b><asp:Label ID="Label2" Text='<%#Eval("SchoolName")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                            <br /><h8 class="ViewTabMain"><b>Field of Study :- </b><asp:Label ID="Label3" Text='<%#Eval("FieldOfStudy")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                            <br /><h8 class="ViewTabMain">Start Date : <%#Eval("StartDob","{0:dd MMM yyyy}")%> - End Date : <%#Convert.ToInt32(Eval("Pursing"))>0 ? "Pursuing" : Eval("EndDob","{0:dd MMM yyyy}")%></h8>
                                            <br /><h8 class="ViewTabMain"><b>Grade / GPA :- </b><asp:Label ID="Label4" Text='<%#Eval("Grade")%>' CssClass="ViewTabSub" runat="server"></asp:Label></h8>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                </div>
                <div class="card">
                <div class="PrfSubHdr">
                <h5 class="mb-0">Experience Details</h5>
                </div>
                    <br />
                    <div class="row">   
                    <asp:Repeater runat="server" ID="RptrExpDetails">
                    <ItemTemplate>
                    <div class="col-sm-4 col-xl-4">
                    <div class="card card-body" style="background-color:#fafafa">
                        <div class="media">
                            <div style="text-align: left;">
                                <h8 class="ViewTabMain"><b>Title  :- </b><asp:Label ID="Label1" Text='<%#Eval("Name")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                <br /><h8 class="ViewTabMain"><b>Company / Institution :- </b><asp:Label ID="Label2" Text='<%#Eval("OrganizationName")%>' CssClass="ViewTabSub" runat="server"></asp:Label></h8>
                                <br /><h8 class="ViewTabMain"><b>Dept / Section  :- </b><asp:Label ID="Label3" Text='<%#Eval("Designation")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                                <br /><h8 class="ViewTabMain">Start Date : <%#Eval("StartDob","{0:dd MMM yyyy}")%> - End Date : <%#Convert.ToInt32(Eval("Pursing"))>0 ? "Pursuing" : Eval("EndDob","{0:dd MMM yyyy}")%></h8>
                            </div>
                        </div>
                    </div>
                    </div>
                    </ItemTemplate>
                    </asp:Repeater>
                </div>
                </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
        <uc1:CtrlCommandAdv runat="server" ID="CtrlCommandAdv" />
    </div>
</asp:Content>
