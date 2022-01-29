using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Repository.Entity
{
    public partial class LanguageKnow
    {
        public string Id { get; set; }
        public string JobId { get; set; }
        public string Language { get; set; }
        public bool? IsRead { get; set; }
        public bool? IsWrite { get; set; }
        public bool? IsSpeak { get; set; }
        public DateTime? CreatedAt { get; set; }

        public virtual JobDetails Job { get; set; }
    }
}
