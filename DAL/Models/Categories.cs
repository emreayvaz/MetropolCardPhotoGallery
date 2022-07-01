using System;
using System.Collections.Generic;

namespace DAL.Models
{
    public partial class Categories
    {
        public Categories()
        {
            Photos = new HashSet<Photos>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public bool? Status { get; set; }

        public virtual ICollection<Photos> Photos { get; set; }
    }
}
