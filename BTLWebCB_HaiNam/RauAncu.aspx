<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="RauAncu.aspx.cs" Inherits="BTLWebCB_HaiNam.RauAncu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-hoaquank">
        <div class="rauanqua-title">Rau ăn Củ</div>
        <div class="trongt3">
            <asp:ListView ID="lvSanpham" runat="server" OnItemCommand="lvSanpham_ItemCommand">
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

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyOutFormServer" runat="server">
</asp:Content>
