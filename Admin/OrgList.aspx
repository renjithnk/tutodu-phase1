<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_OrgList, App_Web_ybvgoxqu" stylesheettheme="SkinFile" theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Content area -->
    <div class="content">

        <!-- Basic datatable -->
        <div class="card">
            <div class="card-header header-elements-inline">
                <h5 class="card-title">Join New Organization</h5>
            </div>
                <div class="card-body">
                <div class="row">
                    <div class="col-md-.5">
                        <div class="form-group">
                            <label>Filter By :</label>
                        </div>
                    </div>
                     <div class="col-md-2">
                        <div class="form-group">
                            <asp:TextBox ID="TxtSearch" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                        </div>
                    </div>
                      <div class="col-md-2">
                        <div class="form-group">
                            <asp:Button ID="BtnSearch"  runat="server" Text="SEARCH" SkinID="BtnCommandFind" CommandName="FIND" OnClick="ManiPulateDataEvent_Clicked"></asp:Button>
                        </div>
                    </div>
                </div>
                <div class="row">
                <asp:Repeater runat="server" ID="RptrActive" OnItemDataBound="RptrActive_ItemDataBound"  DataSourceID="ObjectDataSource1"><ItemTemplate>
                <div class="col-sm-6 col-xl-4">
                <div class="card card-body">
                        <div class="media">
                        <div class="mr-3 align-self-center">
                            <asp:Image ID="ImgOrg" runat="server" CssClass="" Height="100px" ImageAlign="Right" Width="100px" src='<%# Eval("ImageLivePath")%>' alt="icon" />
                        </div>
                        <div class="media-body text-right">
                            <h5 class="ViewTabMain"><asp:HyperLink ID="HyLnkView" Text='<%#Eval("Name")%>' NavigateUrl="#" CssClass="ViewTabMainBlue" runat="server" ></asp:HyperLink></h5>
                            <h8 class="ViewTabMain"><b>Reg. No. :- </b><asp:Label ID="Label6" Text='<%#Eval("CompanyRegNo")%>' CssClass="ViewTabSub" runat="server" ></asp:Label></h8>
                            <br /><asp:Label ID="Label1" Text='<%#Eval("SubCatName")%>' CssClass="ViewTabSub" runat="server" ></asp:Label> 
                            <br /><h8 CssClass="ViewTabSub"><%#Eval("Nationality")%>,<%#Eval("City")%></h8> 
                        </div>
                    </div>
                </div>
                </div>
                </ItemTemplate>
                </asp:Repeater>
                </div>
            </div>
        </div>
        <!-- /basic datatable -->

    </div>
    <!-- /content area -->
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="FnGetJoinOrganiationRecordsList" TypeName="ClsDataBinding">
    <SelectParameters>
        <asp:ControlParameter ControlID="TxtSearch" Name="PrmVal" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="HdnAccId" DefaultValue="0" Name="PrmTutorId" PropertyName="Value" Type="Int32" />
    </SelectParameters>
    </asp:ObjectDataSource>
    <asp:HiddenField ID="HdnCmpId" runat="server" Value="0" />
    <asp:HiddenField ID="HdnAccId" runat="server" Value="0" />
</asp:Content>

