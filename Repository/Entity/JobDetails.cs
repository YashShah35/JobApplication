using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace Repository.Entity
{
    public partial class JobDetails
    {
        public JobDetails()
        {
            EducationDetails = new HashSet<EducationDetails>();
            LanguageKnow = new HashSet<LanguageKnow>();
            Refral = new HashSet<Refral>();
            TechnologyKnown = new HashSet<TechnologyKnown>();
            WorkExperiance = new HashSet<WorkExperiance>();
        }

        public string JobId { get; set; }
        public string FirstName { get; set; }
        public int? LastName { get; set; }
        public int? Designation { get; set; }
        public int? Email { get; set; }
        public int? Phone { get; set; }
        public int? Address1 { get; set; }
        public int? Address2 { get; set; }
        public int? City { get; set; }
        public int? Zipcode { get; set; }
        public int? Gender { get; set; }
        public int? RelationshipStatus { get; set; }
        public DateTime? DateOfBirth { get; set; }
        public string State { get; set; }
        public DateTime? CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
        public string PreferredLocation { get; set; }
        public int? NoticePeriod { get; set; }
        public int? CurrentCtc { get; set; }
        public int? ExpectedCtc { get; set; }
        public string PrefferedDepartment { get; set; }

        public virtual ICollection<EducationDetails> EducationDetails { get; set; }
        public virtual ICollection<LanguageKnow> LanguageKnow { get; set; }
        public virtual ICollection<Refral> Refral { get; set; }
        public virtual ICollection<TechnologyKnown> TechnologyKnown { get; set; }
        public virtual ICollection<WorkExperiance> WorkExperiance { get; set; }
    }
}
