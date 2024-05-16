using System.Text;
using NuGet.Common;
using NuGet.Protocol;
using NuGet.Protocol.Core.Types;

//string packageName = "GroupDocs.Viewer";
string packageName = "GroupDocs.Viewer.CrossPlatform";

ILogger logger = NullLogger.Instance;
CancellationToken cancellationToken = CancellationToken.None;

SourceCacheContext cache = new SourceCacheContext();
SourceRepository repository = Repository.Factory.GetCoreV3("https://api.nuget.org/v3/index.json");
PackageMetadataResource resource = await repository.GetResourceAsync<PackageMetadataResource>();

IEnumerable<IPackageSearchMetadata> packages = await resource.GetMetadataAsync(
    packageName,
    includePrerelease: false,
    includeUnlisted: false,
    cache,
    logger,
    cancellationToken);

StringBuilder mdTable = new StringBuilder();
mdTable.AppendLine("| Package version | Target frameworks |");
mdTable.AppendLine("| --- | --- |");

foreach (IPackageSearchMetadata package in packages.OrderByDescending(p => p.Published))
{
    //Console.WriteLine($"Version: {package.Identity.Version}");
    //Console.WriteLine($"Description: {package.Published}");
    //Console.WriteLine("Dependencies:");
    //foreach (var dependencyGroup in package.DependencySets)
    //{
    //    Console.WriteLine($" {dependencyGroup.TargetFramework.GetShortFolderName()}");
    //}

    var frameworks = package
        .DependencySets
        .Select(d => d.TargetFramework.GetShortFolderName())
        .Select(d => d
            .Replace("net20", ".NET Framework 2.0")
            .Replace("net40", ".NET Framework 4.0")
            .Replace("net462", ".NET Frameword 4.6.2")
            .Replace("net6.0", ".NET 6.0")
            .Replace("netstandard2.0", ".NET Standard 2.0")
            .Replace("netstandard2.1", ".NET Standard 2.1")
        );

    string frameworksJoined = string.Join(", ", frameworks);
    if (string.IsNullOrEmpty(frameworksJoined))
    {
        frameworksJoined = ".NET Framework 2.0";
    }

    string line = $"| [{package.Identity.Version}](https://www.nuget.org/packages/{packageName}/{package.Identity.Version}) | {frameworksJoined} |";
    mdTable.AppendLine(line);
}

Console.WriteLine(mdTable.ToString());
