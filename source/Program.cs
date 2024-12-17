var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => $"Hello, {Environment.GetEnvironmentVariable("WHO")}!");

app.Run();
