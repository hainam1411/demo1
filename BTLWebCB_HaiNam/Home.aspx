<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTLWebCB_HaiNam.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner">
        <img src="image/banner1.jpg" width="100%" height="500px" />
    </div>
    <div class="tin1">
        <div class="tin1_inside">
            <a href="#">
                <img src="image/hq1.jpg" alt="hoa_qua"></a>
            <a href="#" class="a1">LỢI ÍCH CỦA THỰC PHẨM SẠCH</a>
            <br>
            <a href="#" class="a2">Trang giới thiệu giúp khách hàng
                    hiểu rõ hơn về cửa hàng của bạn.
                    hãy cung cấp thông tin cụ thể...
            </a>
        </div>
        <div class="tin1_inside">
            <a href="#">
                <img src="image/hq2.jpg" alt="hoa_qua"></a>
            <a href="#" class="a1">LỢI ÍCH CỦA THỰC PHẨM SẠCH</a>
            <br>
            <a href="#" class="a2">Trang giới thiệu giúp khách hàng
                    hiểu rõ hơn về cửa hàng của bạn.
                    hãy cung cấp thông tin cụ thể...
            </a>
        </div>
        <div class="tin1_inside">
            <a href="#">
                <img src="image/hq3.jpg" alt="hoa_qua"></a>
            <a href="#" class="a1">LỢI ÍCH CỦA THỰC PHẨM SẠCH</a>
            <br>
            <a href="#" class="a2">Trang giới thiệu giúp khách hàng
                    hiểu rõ hơn về cửa hàng của bạn.
                    hãy cung cấp thông tin cụ thể...
            </a>
        </div>
        <div class="tin1_inside">
            <a href="#">
                <img src="image/hq4.jpg" alt="hoa_qua"></a>
            <a href="#" class="a1">LỢI ÍCH CỦA THỰC PHẨM SẠCH</a>
            <br>
            <a href="#" class="a2">Trang giới thiệu giúp khách hàng
                    hiểu rõ hơn về cửa hàng của bạn.
                    hãy cung cấp thông tin cụ thể...
            </a>
        </div>
    </div>
    <div class="tin2">
        <div class="tin2_image">
            <img src="image/tin2.png" />
        </div>
        <div class="tin2_thongtin">
            <h4>Về chúng tôi</h4>
            <p>
                Trang giới thiệu giúp khách hàng hiểu rõ hơn về cửa hàng của bạn.
                 Hãy cung cấp thông tin cụ thể về việc kinh doanh, về cửa hàng, thông tin liên hệ. Điều này sẽ giúp khách hàng cảm thấy tin tưởng khi mua hàng trên website của bạn.
            </p>
            <p style="padding-top: 10px;">Một vài gợi ý cho nội dung trang Giới thiệu:</p>
            <ul>

                <li>Bạn là ai </li>
                <li>Giá trị kinh doanh của bạn là gì</li>
                <li>Địa chỉ cửa hàng</li>
                <li>Bạn đã kinh doanh trong ngành hàng này bao lâu rồi</li>
                <li>Bạn kinh doanh ngành hàng online được bao lâu</li>
                <li>Đội ngũ của bạn gồm những ai</li>
                <li>Thông tin liên hệ</li>
                <li>Liên kết đến các trang mạng xã hội (Twitter, Facebook)</li>
            </ul>
            <p style="padding-top: 10px;">Bạn có thể chỉnh sửa hoặc xoá bài viết này tại đây hoặc thêm những bài viết mới trong phần quản lý Trang nội dung.</p>
        </div>
    </div>
    <div class="tin3">
        <asp:ListView ID="lvSanphamTrangchu" runat="server" OnItemCommand="lvSanphamTrangchu_ItemCommand">
            <ItemTemplate>
                <div class="ndt3">
                    <a href="#">
                        <img src='<%# Eval("LinkAnh") %>' alt="rau">
                    </a>
                    <a href="#">
                        <h3><%# Eval("tenSanpham") %></h3>
                    </a>
                    <asp:LinkButton ID="themSanpham" runat="server" CssClass="giarau" CommandName="themgiohang" CommandArgument='<%# Eval("Id") %>'><%# string.Format("{0:#,###,###.### vnđ}",Eval("Gia")) %></asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>

    <div class="tin4">
        <div class="tin4-image">
            <img src="image/anht4.jpg" />
        </div>
        <div class="tin4-image">
            <img src="image/anht42.jpg" />
        </div>
        <div class="tin4-image ">
            <img src="image/anht43.jpg" />
        </div>
        <div class="tin4-image">
            <img src="image/anht44.jpg" />
        </div>
        <div class="tin4-image">
            <img src="image/anht45.jpg" />
        </div>
        <div class="tin4-image">
            <img src="image/anht48.jpg" />
        </div>
        <div class="tin4-image">
            <img src="image/anht47.jpg" />
        </div>
        <div class="tin4-image">
            <img src="image/anht48.jpg" />
        </div>

    </div>
    <div class="tin5">
        <div class="ndtin5">
            <a href="#">
                <img src="image/anhtin5.jpg"></a>
            <a href="#">
                <h3>Nông Sản Bắc Mỹ Rầm Rộ Tìm Đường Vào Việt Nam</h3>
            </a>
            <a href="#"><i class="fas fa-calendar-alt">11/3/2020</i></a>
            <a href="#">
                <p>
                    Là nước xuất khẩu nông sản lớn trên thế giới 
                    nhưng trên sân nhà nông sản Việt Nam có nguy
                    cơ bị bao vây bởi nông sản chất lượng cao đế từ
                    các nước Bắc Mỹ và Newzeland sau TPP.
                </p>
            </a>
        </div>
        <div class="ndtin5">
            <a href="#">
                <img src="image/anhtin52.jpg"></a>
            <a href="#">
                <h3>Tỏi, Ổi, Thanh Long... Việt Lên Vị Trí Nóng Ở Siêu Thị</h3>
            </a>
            <a href="#"><i class="fas fa-calendar-alt">11/3/2020</i></a>
            <a href="#">
                <p>Tỏi Lý Sơn, thanh long Bình Thuận, ổi Long Khánh… được các siêu thị, cửa hàng bán lẻ… dành những vị trí đẹp nhất để trưng bày quảng bá đến người tiêu dùng.	</p>
            </a>
        </div>
        <div class="ndtin5">
            <a href="#">
                <img src="image/anhtin53.jpg"></a>
            <a href="#">
                <h3>Vì Sao Người Tiêu Dùng Không ...</h3>
            </a>
            <a href="#"><i class="fas fa-calendar-alt center">11/3/2020</i></a>
            <a href="#">
                <p>Sau hơn 6 năm triển khai Vietgap (thực hành sản xuất nông nghiệp tốt) tới nay mới...	.</p>
            </a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyOutFormServer" runat="server">
</asp:Content>
