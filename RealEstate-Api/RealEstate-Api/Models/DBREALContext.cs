using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace RealEstate_Api.Models
{
    public partial class DBREALContext : DbContext
    {
        public DBREALContext()
        {
        }

        public DBREALContext(DbContextOptions<DBREALContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Imagen> Imagens { get; set; } = null!;
        public virtual DbSet<Inmueble> Inmuebles { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Imagen>(entity =>
            {
                entity.HasKey(e => e.IdImagen)
                    .HasName("PK__IMAGEN__B42D8F2A179AAA16");

                entity.ToTable("IMAGEN");

                entity.Property(e => e.UbicacionImg)
                    .HasMaxLength(400)
                    .IsUnicode(false);

                entity.HasOne(d => d.oInmueble)
                    .WithMany(p => p.Imagens)
                    .HasForeignKey(d => d.IdInmueble)
                    .HasConstraintName("fk_IdInmueble");
            });

            modelBuilder.Entity<Inmueble>(entity =>
            {
                entity.HasKey(e => e.IdInmueble)
                    .HasName("PK__INMUEBLE__6B8E7D3EB9F5E511");

                entity.ToTable("INMUEBLE");

                entity.Property(e => e.Descripción)
                    .HasMaxLength(400)
                    .IsUnicode(false);

                entity.Property(e => e.LatUbicación)
                    .HasMaxLength(15)
                    .IsUnicode(false);

                entity.Property(e => e.LongUbicación)
                    .HasMaxLength(15)
                    .IsUnicode(false);

                entity.Property(e => e.TipoInmueble)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.TipoOperación)
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
