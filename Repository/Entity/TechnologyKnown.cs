using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Repository.Entity
{
    public partial class TechnologyKnown
    {
        public string Id { get; set; }
        public string JobId { get; set; }
        public string Technology { get; set; }
        public string Level { get; set; }
        public DateTime? CreatedAt { get; set; }

        public virtual JobDetails Job { get; set; }
    }
}
