using Microsoft.EntityFrameworkCore;

namespace DroneService.Data
{
    public class DroneDbContext : DbContext
    {
        public DroneDbContext(DbContextOptions<DroneDbContext> options) : base(options)
        {
        }

        public DbSet<Models.Drone> Drones { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
} 