using BTLWebCB_HaiNam.Modules;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTLWebCB_HaiNam
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            List<SanphamTrangchu> sanphamTrangchu = new List<SanphamTrangchu>();
            sanphamTrangchu.Add(new SanphamTrangchu { Id = 1, tenSanpham = "Rau dền - 300gr", Gia = 7000, LinkAnh = "image\\rau1.jpg" });
            sanphamTrangchu.Add(new SanphamTrangchu { Id = 2, tenSanpham = "Rau mồng tơi - 300gr", Gia = 7000, LinkAnh = "image\\rau2.jpg" });
            sanphamTrangchu.Add(new SanphamTrangchu { Id = 3, tenSanpham = "Su hào tím -  300gr", Gia = 7000, LinkAnh = "image\\rau3.jpg" });
            sanphamTrangchu.Add(new SanphamTrangchu { Id = 4, tenSanpham = "Su su - 400gr", Gia = 7000, LinkAnh = "image\\rau4.jpg" });
            sanphamTrangchu.Add(new SanphamTrangchu { Id = 5, tenSanpham = "Su su non - 300gr", Gia = 7000, LinkAnh = "image\\rau5.jpg" });
            sanphamTrangchu.Add(new SanphamTrangchu { Id = 6, tenSanpham = "Súp lơ trắng mini - 450gr", Gia = 7000, LinkAnh = "image\\rau6.jpg" });
            sanphamTrangchu.Add(new SanphamTrangchu { Id = 7, tenSanpham = "Súp lơ xanh mini - 300gr", Gia = 7000, LinkAnh = "image\\rau7.jpg" });
            sanphamTrangchu.Add(new SanphamTrangchu { Id = 8, tenSanpham = "Tỏi - 300gr", Gia = 7000, LinkAnh = "image\\rau8.jpg" });


            List<Sanpham> sanpham = new List<Sanpham>();
            sanpham.Add(new Sanpham { Id = 1, tenSanpham = "Củ cải đỏ - 300gr", Gia = 7000, LinkAnh = "image\\caido.jpg", loaiSanpham = 1 });
            sanpham.Add(new Sanpham { Id = 2, tenSanpham = "Su su - 300gr", Gia = 7000, LinkAnh = "image\\rau5.jpg", loaiSanpham = 1 });
            sanpham.Add(new Sanpham { Id = 3, tenSanpham = "Bắp cải tìm - 300gr", Gia = 7000, LinkAnh = "image\\bapcai.jpg", loaiSanpham = 1 });
            sanpham.Add(new Sanpham { Id = 4, tenSanpham = "Tỏi - 300gr", Gia = 7000, LinkAnh = "image\\rau8.jpg", loaiSanpham = 1 });
            sanpham.Add(new Sanpham { Id = 5, tenSanpham = "Súp lơ trắng - 300gr", Gia = 7000, LinkAnh = "image\\rau6.jpg", loaiSanpham = 1 });
            sanpham.Add(new Sanpham { Id = 6, tenSanpham = "Mồng tơi - 400gr", Gia = 7000, LinkAnh = "image\\rau2.jpg", loaiSanpham = 1 });
            sanpham.Add(new Sanpham { Id = 7, tenSanpham = "Súp lơ xanh - 300gr", Gia = 7000, LinkAnh = "image\\rau7.jpg", loaiSanpham = 1 });
            sanpham.Add(new Sanpham { Id = 8, tenSanpham = "Cải bẹ xanh - 450gr", Gia = 7000, LinkAnh = "image\\caibe.jpg", loaiSanpham = 1 });


            sanpham.Add(new Sanpham { Id = 9, tenSanpham = "Su su - 300gr", Gia = 7000, LinkAnh = "image\\rau4.jpg", loaiSanpham = 2 });
            sanpham.Add(new Sanpham { Id = 10, tenSanpham = "Su su non - 300gr", Gia = 7000, LinkAnh = "image\\rau5.jpg", loaiSanpham = 2 });
            sanpham.Add(new Sanpham { Id = 11, tenSanpham = "Su hào tím - 300gr", Gia = 7000, LinkAnh = "image\\rau3.jpg", loaiSanpham = 2 });
            sanpham.Add(new Sanpham { Id = 12, tenSanpham = "Khổ qua - 300gr", Gia = 7000, LinkAnh = "image\\khoqua.jpg", loaiSanpham = 2 });
            sanpham.Add(new Sanpham { Id = 13, tenSanpham = "Cà chua- 300gr", Gia = 7000, LinkAnh = "image\\cachua.png", loaiSanpham = 2 });
            sanpham.Add(new Sanpham { Id = 14, tenSanpham = "Súp lơ trắng - 300gr", Gia = 7000, LinkAnh = "image\\rau6.jpg", loaiSanpham = 2 });
            sanpham.Add(new Sanpham { Id = 15, tenSanpham = "Sups lơ xanh - 300gr", Gia = 7000, LinkAnh = "image\\rau7.jpg", loaiSanpham = 2 });
            sanpham.Add(new Sanpham { Id = 16, tenSanpham = "Rau rền đỏ - 300gr", Gia = 7000, LinkAnh = "image\\rau1.jpg", loaiSanpham = 2 });


            sanpham.Add(new Sanpham { Id = 17, tenSanpham = "Cam mỹ - 300gr", Gia = 7000, LinkAnh = "image\\cammy.jpg", loaiSanpham = 3 });
            sanpham.Add(new Sanpham { Id = 18, tenSanpham = "Dưa gang - 300gr", Gia = 7000, LinkAnh = "image\\duagang.png", loaiSanpham = 3 });
            sanpham.Add(new Sanpham { Id = 19, tenSanpham = "Dâu tây - 300gr", Gia = 7000, LinkAnh = "image\\dautay.jpg", loaiSanpham = 3 });
            sanpham.Add(new Sanpham { Id = 20, tenSanpham = "Thanh long - 300gr", Gia = 7000, LinkAnh = "image\\thanhlong.png", loaiSanpham = 3 });
            sanpham.Add(new Sanpham { Id = 21, tenSanpham = "Cà chua - 300gr", Gia = 7000, LinkAnh = "image\\cachua.png", loaiSanpham = 3 });
            sanpham.Add(new Sanpham { Id = 22, tenSanpham = "Táo úc - 300gr", Gia = 7000, LinkAnh = "image\\taouc.jpg", loaiSanpham = 3 });
            sanpham.Add(new Sanpham { Id = 23, tenSanpham = "Cherry - 300gr", Gia = 7000, LinkAnh = "image\\cheri.jpg", loaiSanpham = 3 });
            sanpham.Add(new Sanpham { Id = 24, tenSanpham = "Nho khô - 300gr", Gia = 7000, LinkAnh = "image\\goi.png", loaiSanpham = 3 });

            sanpham.Add(new Sanpham { Id = 25, tenSanpham = "Xoài keo - 300gr", Gia = 7000, LinkAnh = "image\\xoaikeo.png", loaiSanpham = 4 });
            sanpham.Add(new Sanpham { Id = 26, tenSanpham = "Nho - 300gr", Gia = 7000, LinkAnh = "image\\nho.png", loaiSanpham = 4 });
            sanpham.Add(new Sanpham { Id = 27, tenSanpham = "Dâu tây - 300gr", Gia = 7000, LinkAnh = "image\\dautay.jpg", loaiSanpham = 4 });
            sanpham.Add(new Sanpham { Id = 28, tenSanpham = "Khổ qua - 300gr", Gia = 7000, LinkAnh = "image\\khoqua.jpg", loaiSanpham = 4 });
            sanpham.Add(new Sanpham { Id = 29, tenSanpham = "Cà chua - 300gr", Gia = 7000, LinkAnh = "image\\cachua.png", loaiSanpham = 4 });
            sanpham.Add(new Sanpham { Id = 30, tenSanpham = "Táo úc - 300gr", Gia = 7000, LinkAnh = "image\\taouc.jpg", loaiSanpham = 4 });
            sanpham.Add(new Sanpham { Id = 31, tenSanpham = "Cherry - 300gr", Gia = 7000, LinkAnh = "image\\cheri.jpg", loaiSanpham = 4 });
            sanpham.Add(new Sanpham { Id = 32, tenSanpham = "Nho khô - 300gr", Gia = 7000, LinkAnh = "image\\goi.png", loaiSanpham = 4 });

            List<Nguoidung> nguoidung = new List<Nguoidung>();
            nguoidung.Add(new Nguoidung() { tenNguoidung = "Admin", diachi = "Hà Nội", email = "Admin@gmail.com", ngaysinh = Convert.ToDateTime("01/01/1995"), matkhau = "admin" });



            Application["sanphamTrangchu"] = sanphamTrangchu;
            Application["User"] = nguoidung;
            Application["Sanpham"] = sanpham;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["cartItem"] = new List<Cart>();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}