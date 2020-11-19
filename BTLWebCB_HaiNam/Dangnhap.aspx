<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="BTLWebCB_HaiNam.Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Login.css" rel="stylesheet" />
    <script type="text/javascript">
        function checkDulieu() {
            var txtUsser = document.getElementById('<%= txtUsser.ClientID%>');
            var txtPass = document.getElementById('<%= txtPass.ClientID%>');
            if (txtUsser.value == '') {
                alert("Bạn phải nhập tên người dùng.");
                txtUsser.focus();
            }
            if (txtPass.value == '') {
                alert("Bạn phải nhập mật khẩu.");
                txtPass.focus();
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="format mt-5">
        <form>
            <div class="mt-2">
                <label for="uname" class="txt"><b>Tên người dùng:</b></label><br />
                <asp:TextBox ID="txtUsser" runat="server" CssClass="input-field mt-1" placeholder="Nhập tên người dùng"></asp:TextBox>
            </div>

            <div class="mt-2">
                <label for="psw" class="txt"><b>Mật Khẩu:</b></label><br />
                <asp:TextBox ID="txtPass" runat="server" CssClass="input-field mt-1" placeholder="Nhập mật khẩu" TextMode="Password"></asp:TextBox>
            </div>
            <div class="ml-2 mt-2">
                <label>
                    <input type="checkbox" checked="checked" name="remember">
                    Remember me
                </label>
                <br />

                <span class="psw text-black">Quên <a href="#">mật khẩu?</a></span>
                <span class="psw text-black">Chưa có tài khoản, xin vui lòng <a href="Dangky.aspx">Đăng Ký</a></span>
            </div>
            <div class="mt-5">
                <asp:LinkButton ID="lbtnDanhnhap" runat="server" CssClass="btn mt-2" OnClientClick="checkDulieu();" OnClick="lbtnDanhnhap_Click">Đăng nhập</asp:LinkButton>
            </div>
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyOutFormServer" runat="server">
</asp:Content>
