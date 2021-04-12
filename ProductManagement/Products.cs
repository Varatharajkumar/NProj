using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProductManagement
{
    public class Products
    {
        public string PartyName { get; set; }
        public string MaterialType { get; set; }
        public string Color { get; set; }
        public long ProductCost { get; set; }
        public long Quantity { get; set; }
        public string CreatedDate { get; set; }
    }
}