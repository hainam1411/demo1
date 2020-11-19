using BTLWebCB_HaiNam.Modules;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebCB_HaiNam
{
    public partial class TraicayNhapkhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
                hienDanhsach();
        }

        public void hienDanhsach()
        {
            List<Sanpham> sanpham = Application["Sanpham"] as List<Sanpham>;
            sanpham = sanpham.FindAll(sp => sp.loaiSanpham == 3);
            lvSanpham.DataSource = sanpham;
            lvSanpham.DataBind();
        }

        protected void lvSanpham_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "themgiohang")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                if (id > 0)
                {
                    List<Sanpham> sanpham = Application["Sanpham"] as List<Sanpham>;
                    List<Cart> giohang = Session["cartItem"] as List<Cart>;

                    sanpham = sanpham.FindAll(sp => sp.Id == id);
                    Cart gh = new Cart();
                    gh.Id = sanpham[0].Id;
                    gh.LinkAnh = sanpham[0].LinkAnh;
                    gh.tenSanpham = sanpham[0].tenSanpham;
                    gh.Gia = sanpham[0].Gia;
                    gh.soluong = 1;
                    gh.thanhtien = gh.soluong * gh.Gia;

                    giohang.Add(gh);
                    if (giohang.Count > 0)
                    {
                        Response.Write("<script>  alert('Thêm thành công!');</script>");
                        Response.Write("<script>window.location='/TraicayNhapkhau.aspx';</script>");
                    }
                }
            }
        }
    }
}