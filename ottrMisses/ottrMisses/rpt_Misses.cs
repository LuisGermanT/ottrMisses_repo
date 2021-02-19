using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace ottrMisses
{
    public partial class rpt_Misses : DevExpress.XtraReports.UI.XtraReport
    {
        public rpt_Misses()
        {
            InitializeComponent();
            xrLabel1.Text = DateTime.Today.ToShortDateString();
        }

    }
}
