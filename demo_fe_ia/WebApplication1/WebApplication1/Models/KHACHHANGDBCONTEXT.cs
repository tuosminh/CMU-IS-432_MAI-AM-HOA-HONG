using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;



namespace WebApplication1.Models
{
    public class KhachHangDbContext : DbContext
    {
        public KhachHangDbContext() : base("name=KhachHangDbContext") { }

        public DbSet<KhachHang> KHACHHANGs { get; set; }
    }
}