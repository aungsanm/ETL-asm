using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using System;

namespace HANAtoPostgreSyncApp.Models
{
    public class DataContext :DbContext
    {
        public DataContext(DbContextOptions<DataContext> options): base(options)
        {
            AppContext.SetSwitch("Npgsql.EnableLegacyTimestampBehavior", true);
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.EnableSensitiveDataLogging();

        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            var OBCD = modelBuilder.Entity<OBCD>();
            OBCD.HasKey(n => n.BcdEntry);
            OBCD.Property(o => o.BcdEntry).ValueGeneratedNever();

            var OMRC = modelBuilder.Entity<OMRC>();
            OMRC.HasKey(n => n.FirmCode);
            OMRC.Property(o => o.FirmCode).ValueGeneratedNever();



        //If I remove the ValueGeneratedOnAdd, the problem still exists
    }
        public DbSet<OMRC> OMRC { get; set; }
        public DbSet<OBCD> OBCD { get; set; }
    }
    public class DataContextFactory : IDesignTimeDbContextFactory<DataContext>
    {
        public DataContext CreateDbContext(string[] args)
        {
            var optionsBuilder = new DbContextOptionsBuilder<DataContext>();
            optionsBuilder.UseNpgsql("Server=192.168.31.102; port=5432; user id = sap; password = sap2022; database=postgres; pooling = true");
            //optionsBuilder.UseNpgsql("Server=127.0.0.1; port=5432; user id = postgres; password = postgres; database=postgres; pooling = true");

            return new DataContext(optionsBuilder.Options);
        }
    }
}
