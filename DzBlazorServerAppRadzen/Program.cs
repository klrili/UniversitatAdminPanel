
using dz.Data.DataAcces;
using dz.Data.SqlAcces;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;

var builder = WebApplication.CreateBuilder(args);
var conneectionString = builder.Configuration.GetConnectionString("DefaultConnection");

// Add services to the container.
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();
builder.Services.AddBlazorBootstrap();
builder.Services.AddSingleton<ISqlAcces>(new SqlAcces(conneectionString));
builder.Services.AddScoped<IStudentsDataAcces, StudentsDataAcces>();
builder.Services.AddScoped<IGroupsDataAcces, GroupsDataAcces>();
builder.Services.AddScoped<IFacultetsDataAcces, FacultetsDataAcces>();
builder.Services.AddScoped<IDepartamentsDataAcces, DepartamentsDataAcces>();
builder.Services.AddScoped<IDepartamentAndFacultetDataAcces, DepartamentAndFacultetDataAcces>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");

app.Run();
