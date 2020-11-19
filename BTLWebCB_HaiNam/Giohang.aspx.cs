using BTLWebCB_HaiNam.Modules;
using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace BTLWebCB_HaiNam
{
    public partial class Giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                hienGiohang();
        }
        public void hienGiohang()
        {
            List<Cart> giohang = Session["cartItem"] as List<Cart>;
            lvGiohang.DataSource = giohang;
            lvGiohang.DataBind();
        }

        protected void lvGiohang_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                if (id > 0)
                {
                    List<Cart> gh = Session["cartItem"] as List<Cart>;
                    gh.RemoveAll(sp =>sp.Id == id);
                    Response.Write("<script>  alert('Xóa thành công!');</script>");
                    Response.Write("<script>window.location='/Giohang.aspx';</script>");
                    hienGiohang();
                }
            }
        }
    }
}