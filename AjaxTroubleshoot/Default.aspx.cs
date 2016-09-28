using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.counter.Text = (int.Parse(this.counter.Text) + 1).ToString();
    }

    public void rdbPromotion_OnCheckedChanged(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(2000);
    }


}