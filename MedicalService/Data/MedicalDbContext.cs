using Microsoft.EntityFrameworkCore;

namespace MedicalService.Data
{
    public class MedicalDbContext : DbContext
    {
        public MedicalDbContext(DbContextOptions<MedicalDbContext> options) : base(options)
        {
        }

        public DbSet<Models.Person> Persons { get; set; }
        public DbSet<Models.MedicalPractioner> MedicalPractioners { get; set; }
        public DbSet<Models.Patient> Patients { get; set; }
        public DbSet<Models.Pharmacy> Pharmacies { get; set; }
        public DbSet<Models.Medicine> Medicines { get; set; }
        public DbSet<Models.Prescription> Prescriptions { get; set; }
        public DbSet<Models.Order> Orders { get; set; }
        public DbSet<Models.ENabizSystem> ENabizSystems { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Configure relationships
            modelBuilder.Entity<Models.MedicalPractioner>()
                .HasOne<Models.Person>()
                .WithOne()
                .HasForeignKey<Models.MedicalPractioner>(mp => mp.id);

            modelBuilder.Entity<Models.Patient>()
                .HasOne<Models.Person>()
                .WithOne()
                .HasForeignKey<Models.Patient>(p => p.id);
        }
    }
} 