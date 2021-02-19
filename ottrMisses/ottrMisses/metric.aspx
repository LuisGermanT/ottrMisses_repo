<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="metric.aspx.cs" Inherits="ottrMisses.metric" %>

<%@ Register Assembly="DevExpress.XtraCharts.v20.1.Web, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.XtraCharts.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p></p>
    <h3>OTTR Misses.</h3>
    <p></p>
     
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="100%" HeaderText="Views" AllowCollapsingByHeaderClick="True">
        <HeaderStyle ForeColor="Black" Font-Bold="True" Font-Size="Medium" />
        <Content BackColor="White">
        </Content>
        <HeaderContent BackColor="#aaaaaa">
        </HeaderContent>
        <PanelCollection>
            <dx:PanelContent ID="PanelContent1" runat="server">
                <table style="table-layout: fixed">
                    <tr>
                        <th>
                            <dx:ASPxLabel ID="ASPxLabelCaption1" runat="server" Text="Select Week:" Font-Names="Honeywell Sans Web" Font-Size="Medium">
                            </dx:ASPxLabel>
                            <dx:ASPxComboBox ID="ASPxComboBoxWeek" runat="server" ValueField="xWeek"
                                TextField="xWeek" ValueType="System.String" DataSourceID="SqlDataSourceWeek"
                                AutoPostBack="True" OnDataBound="cmbox_DataBoundWeek" Theme="Office365">
                                <ClientSideEvents Validation="function(s, e) {
                                            if (s.GetSelectedIndex()==0) {
                                            e.isValid = false;
                                            e.errorText = &quot;You should Select One Week&quot;;
                                            }}" />
                                <ValidationSettings ValidateOnLeave="False">
                                </ValidationSettings>
                            </dx:ASPxComboBox>
                        </th>
                        <th>
                            <dx:ASPxLabel ID="ASPxLabelCaption2" runat="server" Text="Select Hit/Miss:" Font-Names="Honeywell Sans Web" Font-Size="Medium">
                            </dx:ASPxLabel>
                            <dx:ASPxComboBox ID="ASPxComboBoxHM" runat="server" ValueType="System.String" AutoPostBack="True" 
                                OnSelectedIndexChanged="ASPxComboBoxHM_SelectedIndexChanged" Theme="Office365">
                                <Items>
                                    <dx:ListEditItem Selected="True" Text="Default" Value="%%" />
                                    <dx:ListEditItem Text="On Time" Value="On Time" />
                                    <dx:ListEditItem Text="Miss" Value="Miss" />
                                </Items>
                                <ClientSideEvents Validation="function(s, e) {
                                            if (s.GetSelectedIndex()==0) {
                                            e.isValid = false;
                                            e.errorText = &quot;You should Select One Classification&quot;;
                                            }}" />
                                <ValidationSettings ValidateOnLeave="False">
                                </ValidationSettings>
                            </dx:ASPxComboBox>
                        </th>
                    </tr>
                </table>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    <p></p>
    <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" Width="100%" HeaderText="Filters" AllowCollapsingByHeaderClick="True">
        <HeaderStyle ForeColor="Black" Font-Bold="True" Font-Size="Medium" />
        <Content BackColor="White">
        </Content>
        <HeaderContent BackColor="#aaaaaa">
        </HeaderContent>
        <PanelCollection>
            <dx:PanelContent ID="PanelContent2" runat="server">
                <table style="table-layout: fixed">
                    <tr>
                        <th>
                            <dx:ASPxLabel ID="ASPxLabelCaption3" runat="server" Text="Select Vsm:" Font-Names="Honeywell Sans Web" Font-Size="Medium">
                            </dx:ASPxLabel>
                            <dx:ASPxComboBox ID="ASPxComboBoxVsm" runat="server" ValueField="xVsm"
                                TextField="xVsm" ValueType="System.String" DataSourceID="SqlDataSourceVsm"
                                AutoPostBack="True" OnDataBound="cmbox_DataBoundVsm" Theme="Office365">
                                <ClientSideEvents Validation="function(s, e) {
                                            if (s.GetSelectedIndex()==0) {
                                            e.isValid = false;
                                            e.errorText = &quot;You should Select One Vsm&quot;;
                                            }}" />
                                <ValidationSettings ValidateOnLeave="False">
                                </ValidationSettings>
                            </dx:ASPxComboBox>
                        </th>
                        <th>
                            <dx:ASPxLabel ID="ASPxLabelCaption4" runat="server" Text="Select Area:" Font-Names="Honeywell Sans Web" Font-Size="Medium">
                            </dx:ASPxLabel>
                            <dx:ASPxComboBox ID="ASPxComboBoxArea" runat="server" ValueField="xArea"
                                TextField="xArea" ValueType="System.String" DataSourceID="SqlDataSourceArea"
                                AutoPostBack="True" OnDataBound="cmbox_DataBoundArea" Theme="Office365">
                                <ClientSideEvents Validation="function(s, e) {
                                            if (s.GetSelectedIndex()==0) {
                                            e.isValid = false;
                                            e.errorText = &quot;You should Select One Area&quot;;
                                            }}" />
                                <ValidationSettings ValidateOnLeave="False">
                                </ValidationSettings>
                            </dx:ASPxComboBox>
                        </th>
                        <th>
                            <dx:ASPxLabel ID="ASPxLabelCaption5" runat="server" Text="Select Cell:" Font-Names="Honeywell Sans Web" Font-Size="Medium">
                            </dx:ASPxLabel>
                            <dx:ASPxComboBox ID="ASPxComboBoxCell" runat="server" ValueField="xCell"
                                TextField="xCell" ValueType="System.String" DataSourceID="SqlDataSourceCell"
                                AutoPostBack="True" OnDataBound="cmbox_DataBoundCell" Theme="Office365">
                                <ClientSideEvents Validation="function(s, e) {
                                            if (s.GetSelectedIndex()==0) {
                                            e.isValid = false;
                                            e.errorText = &quot;You should Select One Cell&quot;;
                                            }}" />
                                <ValidationSettings ValidateOnLeave="False">
                                </ValidationSettings>
                            </dx:ASPxComboBox>
                        </th>
                        <th>
                            <dx:ASPxLabel ID="ASPxLabelCaption6" runat="server" Text="Select Mrp:" Font-Names="Honeywell Sans Web" Font-Size="Medium">
                            </dx:ASPxLabel>
                            <dx:ASPxComboBox ID="ASPxComboBoxMrp" runat="server" ValueField="mrpcontroller"
                                TextField="mrpcontroller" ValueType="System.String" DataSourceID="SqlDataSourceMrp"
                                AutoPostBack="True" OnDataBound="cmbox_DataBoundMrp" Theme="Office365">
                                <ClientSideEvents Validation="function(s, e) {
                                            if (s.GetSelectedIndex()==0) {
                                            e.isValid = false;
                                            e.errorText = &quot;You should Select One MRP&quot;;
                                            }}" />
                                <ValidationSettings ValidateOnLeave="False">
                                </ValidationSettings>
                            </dx:ASPxComboBox>
                        </th>
                    </tr>
                </table>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    <asp:SqlDataSource ID="SqlDataSourceWeek" runat="server" ConnectionString="Data Source=MX29W1009;Initial Catalog=DB_1033_Dashboard;Persist Security Info=True;User ID=OPEX_Users;Password=Gqb%Pjo7XZ"
        SelectCommand="SELECT distinct [xWeek] FROM [sysottrmisses] order by xWeek"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceVsm" runat="server" ConnectionString="Data Source=MX29W1009;Initial Catalog=DB_1033_Dashboard;Persist Security Info=True;User ID=OPEX_Users;Password=Gqb%Pjo7XZ"
        SelectCommand="SELECT distinct [xVsm] FROM [sysottrmisses] order by xVsm"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceArea" runat="server" ConnectionString="Data Source=MX29W1009;Initial Catalog=DB_1033_Dashboard;Persist Security Info=True;User ID=OPEX_Users;Password=Gqb%Pjo7XZ"
        SelectCommand="SELECT distinct [xArea] FROM [sysottrmisses] order by xArea"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceCell" runat="server" ConnectionString="Data Source=MX29W1009;Initial Catalog=DB_1033_Dashboard;Persist Security Info=True;User ID=OPEX_Users;Password=Gqb%Pjo7XZ"
        SelectCommand="SELECT distinct [xCell] FROM [sysottrmisses] order by xCell"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceMrp" runat="server" ConnectionString="Data Source=MX29W1009;Initial Catalog=DB_1033_Dashboard;Persist Security Info=True;User ID=OPEX_Users;Password=Gqb%Pjo7XZ"
        SelectCommand="SELECT distinct [mrpcontroller] FROM [sysottrmisses] order by mrpcontroller"></asp:SqlDataSource>
    <p></p>
    <dx:ASPxRoundPanel ID="ASPxRoundPanel3" runat="server" Width="100%" HeaderText="" AllowCollapsingByHeaderClick="True">
        <HeaderStyle ForeColor="Black" Font-Bold="True" Font-Size="Medium" />
        <Content BackColor="White">
        </Content>
        <HeaderContent BackColor="#aaaaaa">
        </HeaderContent>
        <PanelCollection>
            <dx:PanelContent ID="PanelContent3" runat="server">
                <dx:WebChartControl ID="WebChartControl1" runat="server" Width="1150px">
                    <DiagramSerializable>
                        <dx:XYDiagram>
                            <AxisX VisibleInPanesSerializable="-1">
                                <Label Angle="270">
                                    <ResolveOverlappingOptions AllowHide="False" AllowStagger="False" AllowRotate="False" MinIndent="1" />
                                </Label>
                                <NumericScaleOptions AutoGrid="False" GridSpacing="2" />
                            </AxisX>
                            <AxisY VisibleInPanesSerializable="-1"></AxisY>
                        </dx:XYDiagram>
                    </DiagramSerializable>
                    <Legend Name="Default Legend" AlignmentVertical="Center"></Legend>
                    <SeriesSerializable>
                        <dx:Series Name="Miss" LabelsVisibility="True">
                            <ViewSerializable>
                                <dx:SideBySideBarSeriesView Color="192, 80, 77">
                                    <FillStyle FillMode="Solid">
                                    </FillStyle>
                                </dx:SideBySideBarSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                        <dx:Series Name="onTime" LabelsVisibility="True">
                            <ViewSerializable>
                                <dx:SideBySideBarSeriesView Color="155, 187, 89">
                                    <FillStyle FillMode="Solid">
                                    </FillStyle>
                                </dx:SideBySideBarSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                        <dx:Series Name="Total" LabelsVisibility="True">
                            <ViewSerializable>
                                <dx:SideBySideBarSeriesView Color="31, 73, 125">
                                    <FillStyle FillMode="Solid">
                                    </FillStyle>
                                </dx:SideBySideBarSeriesView>
                            </ViewSerializable>
                        </dx:Series>
                    </SeriesSerializable>
                </dx:WebChartControl>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    <p></p>
    <p></p>

    <script type="text/javascript">
        function OnSelectedIndexChanged(s, e) {
            //alert('Visible column value: ' + s.GetSelectedItem().GetColumnText('delayCode'));
            clb.PerformCallback(s.GetValue());
        }
        function OnCallbackComplete(s, e) {
            grid.GetEditor('category').SetValue(e.result);
        }
    </script>
    <dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="clb" OnCallback="ASPxCallback1_Callback">
        <ClientSideEvents CallbackComplete="OnCallbackComplete" />
    </dx:ASPxCallback>

    <dx:ASPxRoundPanel ID="ASPxRoundPanel4" runat="server" Width="100%" HeaderText="" AllowCollapsingByHeaderClick="True">
        <HeaderStyle ForeColor="Black" Font-Bold="True" Font-Size="Medium" />
        <Content BackColor="White">
        </Content>
        <HeaderContent BackColor="#aaaaaa">
        </HeaderContent>
        <PanelCollection>
            <dx:PanelContent ID="PanelContent4" runat="server">
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ds_ottrmisses" KeyFieldName="som_id" Theme="Moderno" Width="1150px" OnCellEditorInitialize="ASPxGridView1_CellEditorInitialize" ClientInstanceName="grid">
                    <SettingsEditing Mode="PopupEditForm">
                    </SettingsEditing>
                    <Settings ShowGroupPanel="True" ShowFooter="True" HorizontalScrollBarMode="Visible" />
                    <SettingsDataSecurity AllowDelete="False" AllowInsert="False" />
                    <SettingsPopup>
                        <EditForm HorizontalAlign="Center" Modal="True" VerticalAlign="Middle">
                        </EditForm>
                    </SettingsPopup>
                    <SettingsSearchPanel Visible="True" />
                    <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                        <Items>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Delay Code">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Comment" RowSpan="2">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="Category">
                            </dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" ColumnSpan="2">
                            </dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewCommandColumn Caption="Edit" ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0" Width="50px">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="som_id" ReadOnly="True" ShowInCustomizationForm="False" VisibleIndex="1" Caption="ID #" Width="50px" Visible="false">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="part" ShowInCustomizationForm="True" VisibleIndex="2" Caption="Part #" Width="90px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="stoNumber" ShowInCustomizationForm="False" VisibleIndex="3" Caption="STO #" Width="90px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="stLine" ShowInCustomizationForm="True" VisibleIndex="4" Caption="Line" Width="75px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="requiredQty" ShowInCustomizationForm="True" VisibleIndex="5" Caption="Req Qty" Width="75px" ReadOnly="True">
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="deliveryQty" ShowInCustomizationForm="True" VisibleIndex="6" Caption="Shipped Qty" Width="80px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="honReqDate" ShowInCustomizationForm="True" VisibleIndex="7" Caption="HON ReqDate" Width="80px" ReadOnly="True">
                            <PropertiesTextEdit DisplayFormatString="d">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="shipAheadDate" ShowInCustomizationForm="True" VisibleIndex="8" Caption="ShipAhead Date" Width="80px" ReadOnly="True">
                            <PropertiesTextEdit DisplayFormatString="d">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="lateShipDate" ShowInCustomizationForm="True" VisibleIndex="9" Caption="LateShip Date" Width="80px" ReadOnly="True">
                            <PropertiesTextEdit DisplayFormatString="d">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="firstShipment" ShowInCustomizationForm="True" VisibleIndex="10" Caption="First Shipment" Width="80px" ReadOnly="True">
                            <PropertiesTextEdit DisplayFormatString="d">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="lastShipment" ShowInCustomizationForm="True" VisibleIndex="11" Caption="Last Shipment" Width="80px" ReadOnly="True">
                            <PropertiesTextEdit DisplayFormatString="d">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="shipTo" ShowInCustomizationForm="True" VisibleIndex="12" Caption="ShipTo" Width="85px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="performanceAct" ShowInCustomizationForm="True" VisibleIndex="13" Caption="Hit/Miss" Width="85px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="category" ShowInCustomizationForm="True" VisibleIndex="15" Caption="Category" Width="160px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataMemoColumn Caption="Comment" CellRowSpan="5" FieldName="comment" ShowInCustomizationForm="True" VisibleIndex="200" Width="400px">
                            <PropertiesMemoEdit Height="150px">
                            </PropertiesMemoEdit>
                        </dx:GridViewDataMemoColumn>
                        <dx:GridViewDataTextColumn FieldName="mrpController" ShowInCustomizationForm="True" VisibleIndex="17" Caption="Mrp" Width="50px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="xCell" ShowInCustomizationForm="True" VisibleIndex="18" Caption="Cell" Width="100px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="xArea" ShowInCustomizationForm="True" VisibleIndex="19" Caption="Area" Width="100px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>                       
                        <dx:GridViewDataTextColumn FieldName="xVsm" ShowInCustomizationForm="True" VisibleIndex="20" Caption="Vsm" Width="100px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>        
                        <dx:GridViewDataTextColumn FieldName="xWeek" ShowInCustomizationForm="True" VisibleIndex="21" Caption="Week" Width="100px" ReadOnly="True">
                        </dx:GridViewDataTextColumn>   
                        <dx:GridViewDataComboBoxColumn Caption="Delay Code" FieldName="delayCode" ShowInCustomizationForm="True" VisibleIndex="14" Width="160px">
                            <PropertiesComboBox DataSourceID="sqlDataSourceDC" TextField="delayCode" ValueField="cat_delayCode_id" ValueType="System.Int32" TextFormatString="{0}">
                                <Columns>
                                    <dx:ListBoxColumn FieldName="delayCode" />
                                    <dx:ListBoxColumn FieldName="delayCodeDesc" Visible="false" />
                                </Columns>
                                <ClientSideEvents SelectedIndexChanged="OnSelectedIndexChanged" />
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                    </Columns>
                    <TotalSummary>
                        <dx:ASPxSummaryItem FieldName="performanceAct" ShowInColumn="Hit/Miss" ShowInGroupFooterColumn="Hit/Miss" SummaryType="Count" />        
                    </TotalSummary>                    
                    <GroupSummary>
                        <dx:ASPxSummaryItem FieldName="performanceAct" ShowInColumn="Hit/Miss" SummaryType="Count" />
                        <dx:ASPxSummaryItem FieldName="performanceAct" ShowInColumn="Mrp" SummaryType="Count" />
                        <dx:ASPxSummaryItem FieldName="performanceAct" ShowInColumn="Cell" SummaryType="Count" />
                        <dx:ASPxSummaryItem FieldName="performanceAct" ShowInColumn="Area" SummaryType="Count" />
                        <dx:ASPxSummaryItem FieldName="performanceAct" ShowInColumn="Vsm" SummaryType="Count" />
                        <dx:ASPxSummaryItem FieldName="performanceAct" ShowInColumn="ShipTo" SummaryType="Count" />
                        <dx:ASPxSummaryItem FieldName="performanceAct" ShowInColumn="Week" SummaryType="Count" />
                    </GroupSummary>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="sqlDataSourceDC" runat="server" ConnectionString="<%$ ConnectionStrings:DB_1033_DashboardConnectionString %>"
                    SelectCommand="SELECT * FROM [cat_delayCodes]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlDataSourceDCP" runat="server" ConnectionString="<%$ ConnectionStrings:DB_1033_DashboardConnectionString %>"
                    SelectCommand="SELECT [delayCodeCategory] FROM [cat_delayCodes] WHERE [cat_delayCode_id] = @cat_delayCode_id">
                    <SelectParameters>
                        <asp:Parameter Name="cat_delayCode_id" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="ds_ottrmisses" runat="server" ConnectionString="<%$ ConnectionStrings:DB_1033_DashboardConnectionString %>"
                    SelectCommand="SELECT [sysOTTRmisses].[som_id],[part],[stoNumber],[stLine],[requiredQty],[deliveryQty],[honReqDate],[shipAheadDate],[lateShipDate],[firstShipment],[lastShipment],[shipTo],[performanceAct],[mrpController],[xCell],[xArea],[xVsm],[sysOTTRcodes].[delayCode],[comment],[category],[xWeek]
                                    FROM [DB_1033_Dashboard].[dbo].[sysOTTRmisses], [DB_1033_Dashboard].[dbo].[sysOTTRcodes]
                                    WHERE [sysOTTRmisses].stoNumber = [sysOTTRcodes].[sto]
                                    AND [sysOTTRmisses].stLine = [sysOTTRcodes].[line]
                                    AND [xWeek] like @pWeek
                                    AND [xVsm] like @pVsm
                                    AND [xArea] like @pArea
                                    AND [xCell] like @pCell
                                    AND [mrpController] like @pMrp
                                    AND [performanceAct] like @pHM"
                    UpdateCommand="UPDATE [sysOTTRcodes] set [delayCode] = @delayCode, [comment] = @comment, [category] = @category where [som_id] = @som_id">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ASPxRoundPanel1$ASPxComboBoxWeek"
                            Name="pWeek" PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="ASPxRoundPanel1$ASPxComboBoxHM"
                            Name="pHM" PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="ASPxRoundPanel2$ASPxComboBoxVsm"
                            Name="pVsm" PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="ASPxRoundPanel2$ASPxComboBoxArea"
                            Name="pArea" PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="ASPxRoundPanel2$ASPxComboBoxCell"
                            Name="pCell" PropertyName="Value" Type="String" />
                        <asp:ControlParameter ControlID="ASPxRoundPanel2$ASPxComboBoxMrp"
                            Name="pMrp" PropertyName="Value" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="delayCode" Type="String" />
                        <asp:Parameter Name="comment" Type="String" />
                        <asp:Parameter Name="category" Type="String" />
                        <asp:Parameter Name="som_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    <p></p>
</asp:Content>
