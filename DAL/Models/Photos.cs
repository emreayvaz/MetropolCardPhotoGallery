using System;
using System.Collections.Generic;

namespace DAL.Models
{
    public partial class Photos
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int? CategoryId { get; set; }
        public int? ViewNumber { get; set; }
        public bool? Status { get; set; }

        public virtual Categories Category { get; set; }
    }
}
