package 'httpd' do
  action :install
end

# Create a web user and group
user 'web'
group 'web' 

file '/var/www/html/index.html' do
  content '<h1>Hello, world!</h1>'
  action :create
  user 'web'
  group 'web'
end

# Attempt to start a bogus service, ignore the failure
# service 'foo' do
#   action :start
#   ignore_failure true
# end


service 'httpd' do
  action [:start, :enable]
end
