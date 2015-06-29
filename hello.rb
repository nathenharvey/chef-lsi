file 'hello.txt' do
  owner 'chef'
  content "Hello, DC!\n"
  action :create
  group 'root'
  mode  '0777'
end

execute 'append to file' do
  action :run
  command 'echo "hello" >> /tmp/hi'
#   not_if do
#     File.exist?("/tmp/hi")
#   end
end

bash 'append more' do
  command '/home/chef/myscript.sh'
  code '/home/chef/myscript.sh'
end

