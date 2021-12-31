<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="Admin_LibraryDocDetails, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register src="../CtrlCommandAdv.ascx" tagname="CtrlCommandAdv" tagprefix="uc2" %>
<%@ Register Src="~/CtrlCommandAdv.ascx" TagPrefix="uc1" TagName="CtrlCommandAdv" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .table th {background-color: white;text-align: center;
        }
        .auto-style3 {
            position: relative;
            display: flex;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-clip: border-box;
            border-radius: .1875rem;
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            left: 0px;
            top: 0px;
            width: 100%;
            height: 759px;
            margin-bottom: 1.25rem;
            background-color: #fff;
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
                    <div class="auto-style3">
                        <table class="table table-borderless profile-table">
                            <tbody>
                                <tr>
                                    <td class="PrfRow">
                                        <asp:Label ID="Lbl0" runat="server" Text="Course Type" Width="100%"></asp:Label>
                                    </td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow">
                                       <%# Eval("CourseTType") %>
                                    </td>
                                    <td rowspan="3">
                                        <asp:Image ID="ImgProfPicMod" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Course Medium</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblDOB" runat="server" SkinID="LblNormal" Text='<%#Eval("CourseMedium")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Category</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow">
                                        <asp:Label ID="LblCategory" runat="server" SkinID="LblNormal" Width="200px" Text='<%#Eval("CategoryName")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Sub Category</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblAdd1" runat="server" SkinID="LblNormal" Text='<%#Eval("SubCategoryName")%>' Width="100%" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Academic Level</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblAdd2" runat="server" SkinID="LblNormal" Text='<%#Eval("AcaedemicLevel")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Autor Name</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblCountry" runat="server" SkinID="LblNormal" Text='<%#Eval("AutorName")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Organization Course No</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblOrgCourseNo" runat="server" SkinID="LblNormal" Text='<%#Eval("OrgCourseNo") %>' />
                                    </td>
                                     <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">University Course No.</td>
                                    <td class="PrfClmnRow">:</td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblUniversityCourseNo" runat="server" SkinID="LblNormal" Text='<%#Eval("UniversityCourseNo") %>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Duration</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="LblZip" runat="server" SkinID="LblNormal" Text='<%#Eval("Duration")+" "+Eval("DurationType")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Fees</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="Label3" runat="server" SkinID="LblNormal" Text='<%#Eval("Fees")+" "+Eval("FeesMode")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Introduction</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="Label4" runat="server" SkinID="LblNormal" Text='<%#Eval("CourseIntroduction")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="PrfRow">Syllabus</td>
                                    <td class="PrfClmnRow"><span>:</span></td>
                                    <td class="PrfRow" colspan="2">
                                        <asp:Label ID="Label5" runat="server" SkinID="LblNormal" Text='<%#Eval("CourseSyllabus")%>' />
                                    </td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
        <uc1:CtrlCommandAdv runat="server" ID="CtrlCommandAdv" />
    </div>
</asp:Content>
