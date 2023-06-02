using System.Data;
using System.Data.SqlClient;
using PharmacyApi.Models.Interfaces;
using PharmacyApi.Providers;
using PharmacyApi.Services;

namespace PharmacyApi
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.

            builder.Services.AddControllers();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();
            builder.Services.AddSingleton<IPharmacyService, PharmacyService>();
            builder.Services.AddSingleton<IDataProvider>(provider =>
            {
                string connString = @"Data Source=LAPTOP-1SNNUGR9\SQLEXPRESS;Initial Catalog=PharmacyDB;Integrated Security=True;";
                return new SqlDataProvider(connString);
            });
            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();

            app.UseAuthorization();

            app.MapControllers();

            app.Run();
        }
    }
}




