if settings.development?
  $env = 'development'
elsif settings.production?
  $env = 'production'
elsif settings.test?
  $env = 'test'
else
  raise('Invalid environment.')
end
