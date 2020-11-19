using BTLWebCB_HaiNam.Modules;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWebCB_HaiNam
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbtnDanhnhap_Click(object sender, EventArgs e)
        {
            //.gán session user và pass vào các textbox tương ứng
            Session["username"] = txtUsser.Text;
            Session["password"] = txtPass.Text;
            List<Nguoidung> glstusers = (List<Nguoidung>)Application["User"];
            int tdn = 0;
            int mk = 0;
            ///gán tên đăng nhập và mật khẩu vào session tương ứng
            string tendangnhap = Session["username"].ToString();
            string matkhau = Session["password"].ToString();
            ///duyệt vòng for để kiểm tra tên đăng nhập và mật khẩu có đúng không
            foreach (Nguoidung item in glstusers)
            {
                if (tendangnhap.Equals(item.tenNguoidung))
                    tdn = 1;
                if (matkhau.Equals(item.matkhau))
                    mk = 1;
            }

            if (tdn == 1 && mk == 1)
            {
                Response.Write("<script>  alert('Đăng nhập thành công!');</script>");
                Response.Write("<script>window.location='/Home.aspx';</script>");

            }
            else
                Response.Write("<script> alert('Tên đăng nhập hoặc mật khẩu sai!')</script>");
        }
    }
}