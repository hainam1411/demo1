<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="BTLWebCB_HaiNam.Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Login.css" rel="stylesheet" />
    <script type="text/javascript">
        function CheckDangky() {
            var txtTenNguoidung = document.getElementById('<%=txtTenNguoidung.ClientID%>');
            var txtNgaysinh = document.getElementById('<%=txtNgaysinh.ClientID%>');
            var txtEmail = document.getElementById('<%= txtEmail.ClientID%>');
            var txtDiachi = document.getElementById('<%= txtDiachi.ClientID%>');
            var txtMatkhau = document.getElementById('<%= txtMatkhau.ClientID%>');
            var txtNhaplaiMatkhau = document.getElementById('<%= txtNhaplaiMatkhau.ClientID%>');
            if (txtTenNguoidung.value == '') {
                alert("Họ tên người dùng không được để trống.");
                txtTenNguoidung.focus();
            }
            if (txtEmail.value == '') {
                alert("Địa chỉ Email không được để trống.");
                txtEmail.focus();
            }
            if (txtNgaysinh.value == '') {
                alert("Ngày sinh không được để trống.");
                txtNgaysinh.focus();
            }
            if (txtDiachi.value == '') {
                alert("Địa chỉ không được để trống.");
                txtDiachi.focus();
            }
            if (txtMatkhau.value == '') {
                alert("Mật khẩu không được để trống.");
                txtMatkhau.focus();
            }
            if (txtNhaplaiMatkhau.value == '') {
                alert("Nhập lại mật khẩu không được để trống.");
                txtNhaplaiMatkhau.focus();
            }
            if (txtMatkhau.value != txtNhaplaiMatkhau.value) {
                alert("Mật khẩu chưa khớp, vui lòng kiểm tra lại.");
                txtNhaplaiMatkhau.focus();
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="benner-cate text-center">
        <div class="page-title">
            <h2 class="text-white mt-6 ">Đăng Ký</h2>
        </div>
    </div>
    <div class="format mt-4">
        <form class="mt-4">
            <div class="mt-2">
                <label for="usrnm" class="txt"><b>Tên người dùng:</b></label><br />
                <asp:TextBox ID="txtTenNguoidung" runat="server" CssClass="input-field" placeholder="Nhập tên người dùng"></asp:TextBox>
            </div>
            <div class="mt-2">
                <label for="email" class="txt"><b>Địa chỉ Email:</b></label><br />
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" placeholder="Nhập email"></asp:TextBox>
            </div>
            <div class="mt-2">
                <label for="birthdaytime" class="txt"><b>Ngày sinh:</b></label><br />
                <asp:TextBox ID="txtNgaysinh" runat="server" CssClass="input-field" TextMode="Date"></asp:TextBox>
            </div>
            <div class="mt-2">
                <label for="address" class="txt"><b>Địa chỉ:</b></label><br />
                <asp:TextBox ID="txtDiachi" runat="server" CssClass="input-field" placeholder="Nhập Địa Chỉ"></asp:TextBox>
            </div>
            <div class="mt-2">
                <label for="psw" class="txt"><b>Nhập mật khẩu:</b></label><br />
                <asp:TextBox ID="txtMatkhau" runat="server" CssClass="input-field" placeholder="Nhập mật khẩu" TextMode="Password"></asp:TextBox>
            </div>
            <div class="mt-2">
                <label for="psw" class="txt"><b>Nhập lại mật khẩu:</b></label><br />
                <asp:TextBox ID="txtNhaplaiMatkhau" runat="server" CssClass="input-field" placeholder="Nhập lại mật khẩu" TextMode="Password"></asp:TextBox>
            </div>
            <label class="txt2 mt-2">
                <input type="checkbox" checked="checked" name="accept">
                <b >Tôi chấp nhận mọi quy định điều khoản của người dùng</b>
            </label>
            <br />
            <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" CssClass="ml-2 btn text-white" OnClientClick="CheckDangky()" />
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyOutFormServer" runat="server">
</asp:Content>
