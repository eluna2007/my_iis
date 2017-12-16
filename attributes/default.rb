# Where IIS is installed
default['iis']['pubroot'] = "c:\inetpub"

# IIS web site home directory
default['iis']['docroot'] = "c:\candidateportal\wwwroot"

# location of IIS logs
default['iis']['log_dir'] = "c:\candidateportal_Logs"

# IIS componnents to be installed
default['iis']['components'] = [
  'IIS-WebServerRole',
  'IIS-WebServer',
  'IIS-CommonHttpFeatures',
  'IIS-Security',
  'IIS-RequestFiltering',
  'IIS-StaticContent',
  'IIS-DefaultDocument',
  'IIS-DirectoryBrowsing',
  'IIS-HttpErrors',
  'IIS-HttpRedirect',
  'IIS-WebDAV',
  'IIS-ApplicationDevelopment',
  'IIS-WebSockets',
  'IIS-ApplicationInit',
  'IIS-ISAPIExtensions',
  'IIS-ISAPIFilter',
  'IIS-ASP',
  'IIS-CGI',
  'IIS-ServerSideIncludes',
  'IIS-HealthAndDiagnostics',
  'IIS-HttpLogging',
  'IIS-LoggingLibraries',
  'IIS-RequestMonitor',
  'IIS-HttpTracing',
  'IIS-CustomLogging',
  'IIS-ODBCLogging',
  'IIS-CertProvider',
  'IIS-BasicAuthentication',
  'IIS-WindowsAuthentication',
  'IIS-DigestAuthentication',
  'IIS-ClientCertificateMappingAuthentication',
  'IIS-IISCertificateMappingAuthentication'
]
