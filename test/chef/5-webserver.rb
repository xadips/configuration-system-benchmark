package 'apache2-package' do
  package_name 'apache2'
  action :install
end

service 'apache2-service' do
  name 'apache2'
  action [ :enable, :start ]
end
