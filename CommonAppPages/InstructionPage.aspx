<%@ page title="" language="C#" masterpagefile="~/MasterPages/AdminMasterPageOnly.master" autoeventwireup="true" inherits="CommonAppPages_InstructionPage, App_Web_2iozjjrd" stylesheettheme="SkinFile" theme="SkinFile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register src="../CtrlCommand.ascx" tagname="CtrlCommand" tagprefix="uc1" %>
<%@ Register Src="~/CtrlDate.ascx" TagPrefix="uc1" TagName="CtrlDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
       <div class="card">
           <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                    <div class="panel panel-body">
                    <div class="form-group">
                        <label><b>Day</b></label>
                        <div class="input-group">
                            <asp:DropDownList runat="server" ID="DdlDay" SkinID="DdlWeekDay" ></asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label><b>From Time</b></label>
                        <div class="input-group">
                            <asp:DropDownList runat="server" ID="DdlHr" SkinID="DdlHour"></asp:DropDownList>
                            <asp:DropDownList runat="server" ID="DdlMnt" SkinID="DdlNormal" ></asp:DropDownList>
                            <asp:DropDownList runat="server" ID="DdlMode" SkinID="DdlTimeMode" ></asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label><b>To Time</b></label>
                        <div class="input-group">
                             <asp:DropDownList runat="server" ID="DdlHrTo" SkinID="DdlHour"></asp:DropDownList>
                            <asp:DropDownList runat="server" ID="DdlMntTo" SkinID="DdlNormal" ></asp:DropDownList>
                            <asp:DropDownList runat="server" ID="DdlModeTo" SkinID="DdlTimeMode" ></asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label><b>Remarks</b></label>
                        <div class="input-group">
                            <asp:TextBox runat="server" ID="TxtRemarks" placeholder="Remarks" Text=""  SkinID="TxtForCtrlSngl" />
                            </div>
                    </div>
                    <uc1:ctrlcommand ID="CtrlCommand1" runat="server" IsVisibleFind="true" />
                    </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-body">
                                                      <asp:GridView ID="GrdRecords" CssClass="table table-bordered" AllowPaging="True" PageSize="5" runat="server" AutoGenerateColumns="False" 
                                                          OnSelectedIndexChanging="GrdRecords_SelectedIndexChanging" OnPageIndexChanging="GrdRecords_PageIndexChanging">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Day">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("DayVal") %>' SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Start Time">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("StartTime") %>' SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="End Time">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("EndTime") %>' SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Remarks">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Remarks") %>' SkinID="LblNormal"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lb" CommandName="Select" CommandArgument='<%#Eval("Id")%>' runat="server"> <i class="icon-pencil5"></i></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle CssClass="pagination-ys" />
                                    </asp:GridView>
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>

