using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ottrMisses
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            calcularOTTR();
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("metric.aspx");
        }

        protected void ASPxButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("vwr_Misses.aspx");
        }

        protected void ASPxButton3_Click(object sender, EventArgs e)
        {

        }

        void calcularOTTR()
        {
            string qry1 = "SELECT count(som_id) as total, (select count(som_id) FROM[DB_1033_Dashboard].[dbo].[sysOTTRmisses] WHERE performanceAct = 'On Time') as hit, (select count(som_id) FROM[DB_1033_Dashboard].[dbo].[sysOTTRmisses] WHERE performanceAct = 'Miss') as miss  FROM [DB_1033_Dashboard].[dbo].[sysOTTRmisses]";
            SQLHelper.DBHelper dBHelper = new SQLHelper.DBHelper();
            DataTable dt1 = dBHelper.QryManager(qry1);
            decimal xTotal = 0;
            decimal xHit = 0;
            decimal xMiss = 0;
            foreach (DataRow dr1 in dt1.Rows)
            {
                xTotal = Convert.ToDecimal(dr1["total"].ToString());
                xHit = Convert.ToDecimal(dr1["hit"].ToString());
                xMiss = Convert.ToDecimal(dr1["miss"].ToString());
            }
            labelTotal.Text = xTotal + "";
            labelHit.Text = xHit + "";
            labelMisses.Text = xMiss + "";
            decimal xPerc = ((xHit / xTotal) * 100);
            labelPercent.Text = Math.Round(xPerc,2) + "%";
        }


    }
}