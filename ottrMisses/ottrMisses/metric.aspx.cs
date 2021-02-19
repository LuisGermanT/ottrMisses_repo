using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ottrMisses
{
    public partial class metric : System.Web.UI.Page
    {
        int editingMode = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ASPxComboBoxWeek.SelectedIndexChanged += new System.EventHandler(ASPxComboBoxWeek_SelectedIndexChanged);
            this.ASPxComboBoxHM.SelectedIndexChanged += new System.EventHandler(ASPxComboBoxHM_SelectedIndexChanged);
            this.ASPxComboBoxVsm.SelectedIndexChanged += new System.EventHandler(ASPxComboBoxVsm_SelectedIndexChanged);
            this.ASPxComboBoxArea.SelectedIndexChanged += new System.EventHandler(ASPxComboBoxArea_SelectedIndexChanged);
            this.ASPxComboBoxCell.SelectedIndexChanged += new System.EventHandler(ASPxComboBoxCell_SelectedIndexChanged);
            this.ASPxComboBoxMrp.SelectedIndexChanged += new System.EventHandler(ASPxComboBoxMrp_SelectedIndexChanged);
            chartDefault("%%", "%%", "%%", "%%", "%%", "%%");
        }

        protected void ASPxComboBoxWeek_SelectedIndexChanged(object sender, EventArgs e)
        {
            string xWeek = ASPxComboBoxWeek.Value.ToString();
            string xHm = ASPxComboBoxHM.Value.ToString();
            string xVsm = ASPxComboBoxVsm.Value.ToString();
            string xArea = ASPxComboBoxArea.Value.ToString();
            string xCell = ASPxComboBoxCell.Value.ToString();
            string xMrp = ASPxComboBoxMrp.Value.ToString();
            chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
        }

        protected void ASPxComboBoxHM_SelectedIndexChanged(object sender, EventArgs e)
        {
            string xWeek = ASPxComboBoxWeek.Value.ToString();
            string xHm = ASPxComboBoxHM.Value.ToString();
            string xVsm = ASPxComboBoxVsm.Value.ToString();
            string xArea = ASPxComboBoxArea.Value.ToString();
            string xCell = ASPxComboBoxCell.Value.ToString();
            string xMrp = ASPxComboBoxMrp.Value.ToString();
            chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
        }

        protected void ASPxComboBoxVsm_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (editingMode == 0)
            {
                editingMode = 1;
                ASPxComboBoxArea.SelectedIndex = 0;
                ASPxComboBoxCell.SelectedIndex = 0;
                ASPxComboBoxMrp.SelectedIndex = 0;
                editingMode = 0;
                string xWeek = ASPxComboBoxWeek.Value.ToString();
                string xHm = ASPxComboBoxHM.Value.ToString();
                if (ASPxComboBoxVsm.SelectedIndex == 0)
                {
                    string xVsm = "%%";
                    string xArea = "%%";
                    string xCell = "%%";
                    string xMrp = "%%";
                    chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
                }
                else
                {
                    string xVsm = ASPxComboBoxVsm.Value.ToString();
                    string xArea = "%%";
                    string xCell = "%%";
                    string xMrp = "%%";
                    chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
                }
            }
        }

        protected void ASPxComboBoxArea_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (editingMode == 0)
            {
                editingMode = 1;
                ASPxComboBoxVsm.SelectedIndex = 0;
                ASPxComboBoxCell.SelectedIndex = 0;
                ASPxComboBoxMrp.SelectedIndex = 0;
                editingMode = 0;
                string xWeek = ASPxComboBoxWeek.Value.ToString();
                string xHm = ASPxComboBoxHM.Value.ToString();
                if (ASPxComboBoxArea.SelectedIndex == 0)
                {
                    string xVsm = "%%";
                    string xArea = "%%";
                    string xCell = "%%";
                    string xMrp = "%%";
                    chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
                }
                else
                {
                    string xVsm = "%%";
                    string xArea = ASPxComboBoxArea.Value.ToString();
                    string xCell = "%%";
                    string xMrp = "%%";
                    chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
                }
            }
        }

        protected void ASPxComboBoxCell_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (editingMode == 0)
            {
                editingMode = 1;
                ASPxComboBoxVsm.SelectedIndex = 0;
                ASPxComboBoxArea.SelectedIndex = 0;
                ASPxComboBoxMrp.SelectedIndex = 0;
                editingMode = 0;
                string xWeek = ASPxComboBoxWeek.Value.ToString();
                string xHm = ASPxComboBoxHM.Value.ToString();
                if (ASPxComboBoxCell.SelectedIndex == 0)
                {
                    string xVsm = "%%";
                    string xArea = "%%";
                    string xCell = "%%";
                    string xMrp = "%%";
                    chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
                }
                else
                {
                    string xVsm = "%%";
                    string xArea = "%%";
                    string xCell = ASPxComboBoxCell.Value.ToString();
                    string xMrp = "%%";
                    chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
                }
            }
        }

        protected void ASPxComboBoxMrp_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (editingMode == 0)
            {
                editingMode = 1;
                ASPxComboBoxVsm.SelectedIndex = 0;
                ASPxComboBoxArea.SelectedIndex = 0;
                ASPxComboBoxCell.SelectedIndex = 0;
                editingMode = 0;
                string xWeek = ASPxComboBoxWeek.Value.ToString();
                string xHm = ASPxComboBoxHM.Value.ToString();
                if (ASPxComboBoxMrp.SelectedIndex == 0)
                {
                    string xVsm = "%%";
                    string xArea = "%%";
                    string xCell = "%%";
                    string xMrp = "%%";
                    chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
                }
                else
                {
                    string xVsm = "%%";
                    string xArea = "%%";
                    string xCell = "%%";
                    string xMrp = ASPxComboBoxMrp.Value.ToString();
                    chartDefault(xWeek, xHm, xVsm, xArea, xCell, xMrp);
                }
            }
        }

        protected void cmbox_DataBoundWeek(object sender, EventArgs e)
        {
            ListEditItem defaultItem = new ListEditItem("All", "%%");
            ASPxComboBoxWeek.Items.Insert(0, defaultItem);
            ASPxComboBoxWeek.SelectedIndex = 0;
        }

        protected void cmbox_DataBoundVsm(object sender, EventArgs e)
        {
            ListEditItem defaultItem = new ListEditItem("All", "%%");
            ASPxComboBoxVsm.Items.Insert(0, defaultItem);
            ASPxComboBoxVsm.SelectedIndex = 0;
        }

        protected void cmbox_DataBoundArea(object sender, EventArgs e)
        {
            ListEditItem defaultItem = new ListEditItem("All", "%%");
            ASPxComboBoxArea.Items.Insert(0, defaultItem);
            ASPxComboBoxArea.SelectedIndex = 0;
        }

        protected void cmbox_DataBoundCell(object sender, EventArgs e)
        {
            ListEditItem defaultItem = new ListEditItem("All", "%%");
            ASPxComboBoxCell.Items.Insert(0, defaultItem);
            ASPxComboBoxCell.SelectedIndex = 0;
        }

        protected void cmbox_DataBoundMrp(object sender, EventArgs e)
        {
            ListEditItem defaultItem = new ListEditItem("All", "%%");
            ASPxComboBoxMrp.Items.Insert(0, defaultItem);
            ASPxComboBoxMrp.SelectedIndex = 0;
        }


        protected void chartDefault(string xWeek, string xHM, string xVsm, string xArea, string xCell, string xMrp)
        {
            WebChartControl1.Series["Total"].Points.Clear();
            WebChartControl1.Series["onTime"].Points.Clear();
            WebChartControl1.Series["Miss"].Points.Clear();

            //string qry1 = "select concat(year(honReqDate),'_',Format(DATEPART(week, honReqDate), '00')) as week, count(performanceAct) as qty, performanceAct from sysottrmisses where xWeek like '" + xWeek + "' and performanceAct like '" + xHM + "' and xVsm like '" + xVsm + "' and xArea like '" + xArea + "' and xCell like '" + xCell + "' and mrpcontroller like '" + xMrp + "'  group by performanceAct, concat(year(honReqDate),'_',Format(DATEPART(week, honReqDate), '00'))";
            string qry1 = "select xweek, performanceAct, count(performanceAct) as Qty from sysottrmisses where xWeek like '" + xWeek + "' and performanceAct like '" + xHM + "' and xVsm like '" + xVsm + "' and xArea like '" + xArea + "' and xCell like '" + xCell + "' and mrpcontroller like '" + xMrp + "' group by xweek, performanceAct order by xweek";
            SQLHelper.DBHelper dBHelper = new SQLHelper.DBHelper();
            DataTable dt1 = dBHelper.QryManager(qry1);
            int total = 0;
            int pointer = 0;
            string arg1 = "";
            foreach (DataRow dr1 in dt1.Rows)
            {
                string semana = "Week: " + dr1["xweek"].ToString();
                int cant = Convert.ToInt32(dr1["qty"].ToString());
                if (pointer == 0)
                {
                    arg1 = semana;
                }

                if (arg1 != semana)
                {
                    WebChartControl1.Series["Total"].Points.AddPoint(arg1, total);
                    total = 0;
                    arg1 = semana;
                }
                if (dr1["performanceAct"].ToString() == "On Time")
                {
                    WebChartControl1.Series["onTime"].Points.AddPoint(semana, cant);
                    total = total + cant;
                }
                if (dr1["performanceAct"].ToString() == "Miss")
                {
                    WebChartControl1.Series["Miss"].Points.AddPoint(semana, cant);
                    total = total + cant;
                }
                pointer = pointer + 1;
                if (pointer == dt1.Rows.Count)
                {
                    WebChartControl1.Series["Total"].Points.AddPoint(semana, total);
                }

            }
        }

        protected void ASPxGridView1_CellEditorInitialize(object sender, ASPxGridViewEditorEventArgs e)
        {
            //if (e.Column.FieldName == "delayCode")
            //{
            //    ASPxComboBox cmb = e.Editor as ASPxComboBox;
            //    cmb.Items.Add("1 - Shipped Early");
            //    cmb.Items.Add("3 - SAP / System Inhibited");
            //    cmb.Items.Add("9 - Export Hold");
            //    cmb.Items.Add("A - Held for COE Engineering");
            //    cmb.Items.Add("B - Quality Review");
            //    cmb.Items.Add("C - First Time/Infrq Bld");
            //    cmb.Items.Add("D - Yield  Issue");
            //    cmb.Items.Add("J - Operations Reject");
            //    cmb.Items.Add("K - Labor - No Census Required");
            //    cmb.Items.Add("L - Equipment Issues");
            //    cmb.Items.Add("M - IDO Execution");
            //    cmb.Items.Add("N - Census Required");
            //    cmb.Items.Add("O - MPS Alignment");
            //    cmb.Items.Add("P - IDO Short to Lead");
            //    cmb.Items.Add("Q - Material Master Incorrect");
            //    cmb.Items.Add("R - 3rd Party Logistics");
            //    cmb.Items.Add("U - Supplier Dlvry Miss ");
            //    cmb.Items.Add("V - Supplier - Engineering/QA");
            //}
        }

        protected void ASPxCallback1_Callback(object source, CallbackEventArgs e)
        {
            string someConstant = "";
            string description = GetDescriptionById(e.Parameter);

            e.Result = description + someConstant;
        }

        private string GetDescriptionById(string id)
        {
            sqlDataSourceDCP.SelectParameters["cat_delayCode_id"].DefaultValue = id;
            DataView result = (DataView)sqlDataSourceDCP.Select(DataSourceSelectArguments.Empty);

            if (result.Count == 0)
                return string.Empty;

            return result[0]["delayCodeCategory"].ToString();
        }


    }
}