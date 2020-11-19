using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLWebCB_HaiNam.Modules
{
    public class Cart
    {
        public int Id { get; set; }
        public string tenSanpham { get; set; }
        public decimal Gia { get; set; }
        public string LinkAnh { get; set; }
        public int soluong { get; set; }
        public decimal thanhtien { get; set; }
    }
}