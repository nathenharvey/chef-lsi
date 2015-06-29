package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content '<h1>Hello, world!</h1>'
  action :create
end

service 'httpd' do
  action [:start, :enable]
end
