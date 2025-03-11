# Create skills directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "assets/skills"

# Define logo URLs
$logos = @{
    "java" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg"
    "python" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg"
    "javascript" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg"
    "cpp" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/cplusplus/cplusplus-original.svg"
    "html5" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original.svg"
    "css3" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original.svg"
    "react" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/react/react-original.svg"
    "nodejs" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original.svg"
    "express" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/express/express-original.svg"
    "git" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/git/git-original.svg"
    "vscode" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/vscode/vscode-original.svg"
    "docker" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg"
    "aws" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/amazonwebservices/amazonwebservices-original.svg"
    "mysql" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original.svg"
    "mongodb" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/mongodb/mongodb-original.svg"
    "postgresql" = "https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original.svg"
}

# Download each logo
foreach ($logo in $logos.GetEnumerator()) {
    $outputPath = "assets/skills/$($logo.Key).svg"
    Write-Host "Downloading $($logo.Key) logo..."
    Invoke-WebRequest -Uri $logo.Value -OutFile $outputPath
} 