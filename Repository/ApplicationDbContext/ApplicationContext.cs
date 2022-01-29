
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Repository.Entity;

namespace Repository.ApplicationDbContext
{
    public class ApplicationContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationContext(Microsoft.EntityFrameworkCore.DbContextOptions<ApplicationContext> dbContextOptions) : base(dbContextOptions)
        {
        }
        protected override void OnModelCreating(Microsoft.EntityFrameworkCore.ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            builder.Entity<ApplicationUser>().ToTable("aspnetusers");
            builder.Entity<IdentityRole>().ToTable("aspnetroles");
            builder.Entity<IdentityUserRole<string>>().ToTable("aspnetuserroles");
            builder.Entity<ApplicationUser>()
    .Property(u => u.Id)
    .HasMaxLength(50);
        }
    }
}
