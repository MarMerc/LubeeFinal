using Microsoft.EntityFrameworkCore;
using System.Text.Json.Serialization;
using RealEstate_Api.Models;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<DBREALContext>(opt => opt.UseSqlServer(builder.Configuration.GetConnectionString("cadenaSQLServer")));

builder.Services.AddControllers().AddJsonOptions(opt =>
{
    opt.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles;
});

var corsRules = "ReglasCors";
builder.Services.AddCors(opt =>
{
    opt.AddPolicy(name: corsRules, builder =>
    {
        builder.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod();
    });
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();

    app.UseCors(corsRules);
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
