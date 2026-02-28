using System.Text.Json;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();

builder.Services.AddCors(options =>
{
    options.AddPolicy("LocalFrontend", policy =>
    {
        policy
            .WithOrigins("http://localhost:5173")
            .AllowAnyHeader()
            .AllowAnyMethod();
    });
});

// Placeholder service registrations for auth (configure schemes later)
builder.Services.AddAuthentication();
builder.Services.AddAuthorization();

var app = builder.Build();

// Global error handling middleware
app.UseExceptionHandler(errorApp =>
{
    errorApp.Run(async context =>
    {
        context.Response.StatusCode = StatusCodes.Status500InternalServerError;
        context.Response.ContentType = "application/json";

        var payload = JsonSerializer.Serialize(new
        {
            error = new
            {
                code = "internal_server_error",
                message = "An unexpected error occurred."
            }
        });

        await context.Response.WriteAsync(payload);
    });
});

app.UseHttpsRedirection();
app.UseCors("LocalFrontend");

// Placeholder middleware usage for auth pipeline
app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();
app.MapGet("/health", () => Results.Ok(new { status = "ok" }));

app.Run();