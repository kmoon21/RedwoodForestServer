using System;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace redwoodforest
{
    public class ApiContext : DbContext
    {
        public ApiContext(DbContextOptions<ApiContext> options) : base(options)
        {

        }
        public DbSet<Gender> Gender { get; set; }
        public DbSet<GradDate> GradDate { get; set; }
        public DbSet<Experience> Experience { get; set; }
        public DbSet<Profile> Profile { get; set; }
        public DbSet<Post> Post { get; set; }
    }
}