<%@ page language="VB" autoeventwireup="false" inherits="Default2, App_Web_mizdyvi3" %>

<%@ Register TagPrefix="cc" Namespace="Winthusiasm.HtmlEditor" Assembly="Winthusiasm.HtmlEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="CSS/HtmlTextEditor.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div> 
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" />

            <table id="DemoTable" border="0" cellpadding="0" cellspacing="0">
            
                <tr>
                
                    <td id="EditorCell">

                        <div id="EditorPanel">

                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" >
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="UpdateButton" EventName="Click" />
                                    <asp:AsyncPostBackTrigger ControlID="ToggleModeRadioButtonList" EventName="SelectedIndexChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="ColorSchemeRadioButtonList" EventName="SelectedIndexChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="NoToolstripBackgroundImageBox" EventName="CheckedChanged" />
                                </Triggers>
                                <ContentTemplate>
                                
                                    <cc:HtmlEditor ID="Editor0" runat="server" Height="400px" Width="700px" />
                                
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <br />
                            <div id="DemoControls">
                            
                                <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" CssClass="button" ToolTip="Save the current editor text" />
                                <asp:Button ID="ClearButton" runat="server" Text="Clear" OnClick="ClearButton_Click" CssClass="button" ToolTip="Clear the text in the editor above" />
                                <asp:Button ID="InfoButton" runat="server" Text="Info" OnClick="InfoButton_Click" CssClass="button" ToolTip="Set the text in the editor above to info text" />
                                <asp:Button ID="UpdateButton" runat="server" Text="Trigger Update" OnClick="UpdateButton_Click" CssClass="button" ToolTip="Trigger an Update of the UpdatePanel that contains the editor above" />
                                
                            </div>
                            
                            <div id="Preview">
                            
                                <div id="PreviewHeading" runat="server" class="demoHeading">Preview</div>
                                
                                <div id="PreviewControls">

                                    <asp:Button ID="PreviewButton" runat="server" Text="Preview" OnClick="PreviewButton_Click" CssClass="previewButton button" ToolTip="Display the current saved editor text as either formatted or Html below" />
                                    <asp:RadioButtonList ID="Selections" CssClass="radiobuttonList button" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" >
                                        <asp:ListItem Text="Formatted" Value="Formatted" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Html" Value="Html"></asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>
                                
                                <div id="PreviewText">
                                
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional" >
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="PreviewButton" EventName="Click" />
                                        </Triggers>
                                        <ContentTemplate>
                                            <div id="TextPreview" runat="server" class="preview"></div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                </div>

                            </div>
                    
                            <div id="Footer">
                            
                                <div style="float: left; text-align: left; padding-left: 5px">
                                    
                                    <a class="poweredby" href="http://www.winthusiasm.com">Powered by Winthusiasm</a>&#153;
                                    
                                </div>
                                
                                <div style="float: right; text-align: right; padding-right: 5px">
                                    
                                    <a class="poweredby" href="http://www.winthusiasm.com/Feeds">RSS</a>
                                    &nbsp;|
                                    <a class="poweredby" href="http://www.winthusiasm.com/HtmlEditor/BasicEdition/Help/FAQ.aspx">FAQ</a>
                                    &nbsp;|
                                    <a class="poweredby" href="http://www.winthusiasm.com/HtmlEditor/BasicEdition/Default.aspx">Basic Edition</a>
                                    
                                </div>
                                
                            </div>
                    
                        </div>

                    </td>
                
                    <td id="OptionsCell">

                        <div id="Options">

                            <div class="demoHeading optionsHeading">Demo Options</div>

                            <div>
                            
                                <div class="optionsLabel">Conversions</div>
                                <div class="optionControls">

                                    <asp:CheckBox ID="XHTMLBox" runat="server" AutoPostBack="True" OnCheckedChanged="XHTMLBox_CheckedChanged" Text="XHTML" CssClass="button" ToolTip="Set to convert to XHTML" /><br />

                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" RenderMode="Inline" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:CheckBox ID="DeprecatedBox" runat="server" AutoPostBack="True" OnCheckedChanged="DeprecatedBox_CheckedChanged" Text="Deprecated" CssClass="button" ToolTip="Set to convert deprecated syntax" /><br />
                                            <asp:CheckBox ID="ParagraphsBox" runat="server" AutoPostBack="True" OnCheckedChanged="ParagraphsBox_CheckedChanged" Text="Paragraphs" CssClass="button" ToolTip="Set to convert paragraphs (IE)" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                
                                </div>
                            
                                <div class="optionsLabel">Toggle Mode</div>
                                <div class="optionControls">
                                
                                    <asp:RadioButtonList ID="ToggleModeRadioButtonList" CssClass="button" runat="server" RepeatLayout="Flow" AutoPostBack="true" OnSelectedIndexChanged="Redirect_EventHandler">
                                        <asp:ListItem Text="Tabs" Value="Tabs" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Toggle Button" Value="ToggleButton"></asp:ListItem>
                                        <asp:ListItem Text="Buttons" Value="Buttons"></asp:ListItem>
                                        <asp:ListItem Text="None" Value="None"></asp:ListItem>
                                    </asp:RadioButtonList>
                                
                                </div>

                                <div class="optionsLabel">Color Scheme</div>
                                <div class="optionControls">
                                
                                    <asp:RadioButtonList ID="ColorSchemeRadioButtonList" CssClass="button" runat="server" RepeatLayout="Flow" AutoPostBack="true" OnSelectedIndexChanged="Redirect_EventHandler">
                                        <asp:ListItem Text="Custom" Value="Custom" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Visual Studio" Value="VisualStudio"></asp:ListItem>
                                        <asp:ListItem Text="Default" Value="Default"></asp:ListItem>
                                    </asp:RadioButtonList>
                                
                                </div>

                                <div class="optionsLabel">Other</div>
                                <div class="optionControls">
                                
                                    <asp:CheckBox ID="NoToolstripBackgroundImageBox" runat="server" AutoPostBack="True" OnCheckedChanged="Redirect_EventHandler" Text="Flat toolstrips" CssClass="button" ToolTip="Set to display toolstrips without background images" />
                                
                                </div>

                            </div>
                        </div>

                    </td>

                </tr>
            
            </table>

        </div>
    </form>
</body>
</html>
