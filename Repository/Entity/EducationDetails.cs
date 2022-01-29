using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Repository.Entity
{
    public partial class EducationDetails
    {
        public string Id { get; set; }
        public string JobId { get; set; }
        public string EduType { get; set; }
        public string BoardName { get; set; }
        public string CourceName { get; set; }
        public int? PassingYear { get; set; }
        public string Percentage { get; set; }
        public DateTime? CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }

        public virtual JobDetails Job { get; set; }
    }
}
