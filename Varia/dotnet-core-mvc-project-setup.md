# Visual Studio 2017 MVC Applikation

https://docs.microsoft.com/en-us/ef/core/get-started/aspnetcore/existing-db

## Nu-Get

Folgende Pakete installieren:

```
Install-Package Microsoft.EntityFrameworkCore.SqlServer
Install-Package Microsoft.EntityFrameworkCore.Tools
Install-Package Microsoft.VisualStudio.Web.CodeGeneration.Design
```

## EntityFramework Models erstellen

Mit dem Argument `-Tables` die ensprechenden Tabellen angeben:

```
Scaffold-DbContext "Server=SQLSERVER;Database=DATABASE;Trusted_Connection=True;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -Tables Table1,Table2,Table3
```

## Register your context with dependency injection

* Im `DATABASEContext.cs` die Methode `OnConfiguring` entfernen
* Im `DATABASEContext.cs` den Konstruktor hinzufügen:

```
public BloggingContext(DbContextOptions<BloggingContext> options)
    : base(options)
{ }
```

* Im `Startup.cs` die Methode `ConfigureServices` erweitern:

```
// This method gets called by the runtime. Use this method to add services to the container.
public void ConfigureServices(IServiceCollection services)
{
    services.AddMvc();

    var connection = @"Server=(localdb)\mssqllocaldb;Database=Blogging;Trusted_Connection=True;ConnectRetryCount=0";
    services.AddDbContext<BloggingContext>(options => options.UseSqlServer(connection));
}
```

# Controller hinzufügen

* `Solution Explorer -> Controllers -> Add -> Controller`
* Select `MVC Controller with views, using Entity Framework`
* _Modellklasse_ und _Context_ auswählen
