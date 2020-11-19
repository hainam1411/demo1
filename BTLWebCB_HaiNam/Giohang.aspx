<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="BTLWebCB_HaiNam.Giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Giohang.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container mt-5">
        <table class="w-100" id="dulieuGiohang">
            <tr class="bg-green">
                <th class="p-2">STT</th>
                <th colspan="2">Sản phẩm</th>
                <th>Giá
                                    <br />
                    (vnđ)</th>
                <th>Số lượng</th>
                <th>Thành tiền<br />
                    (vnđ)</th>
                <th></th>
            </tr>
            <asp:ListView ID="lvGiohang" runat="server" OnItemCommand="lvGiohang_ItemCommand">
                <ItemTemplate>
                    <tr class="text-center">
                        <td><%# Container.DataItemIndex +1 %></td>
                        <td>
                              <img src="<%# Eval("LinkAnh") %>"" class="w100 img-fluid imgGiohang" alt="Ảnh sản phẩm" title="" />
                        </td>
                        <td class="text">
                            <%# Eval("tenSanpham") %>
                        </td>
                        <td class="text">
                            <%# string.Format("{0:#,###,###.###}",Eval("Gia")) %> vnđ
                        </td>
                        <td class="text">
                            <samp class="khungsoluong ml-1 ">
                                <%# Eval("soluong") %>
                            </samp>
                        </td>
                        <td class="text">
                            <%# string.Format("{0:#,###,###.###}",Eval("thanhtien")) %> vnđ
                        </td>
                        <td>
                            <asp:LinkButton ID="lbtnXoa" runat="server" CommandName="xoa" CommandArgument='<%# Eval("Id") %>'><i class="fas fa-trash-alt text-greey"></i></asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyOutFormServer" runat="server">
</asp:Content>
