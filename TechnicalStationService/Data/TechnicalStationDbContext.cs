using Microsoft.EntityFrameworkCore;

namespace TechnicalStationService.Data
{
    public class TechnicalStationDbContext : DbContext
    {
        public TechnicalStationDbContext(DbContextOptions<TechnicalStationDbContext> options) : base(options)
        {
        }

        public DbSet<Models.TechnicalStation> TechnicalStations { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }
} 