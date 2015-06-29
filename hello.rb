file 'hello.txt' do
  owner 'chef'
  content "Hello, DC!\n"
  action :create
  group 'root'
  mode  '0777'
end

script '/home/chef/myscript.sh' do
  action :run
  not_if do
    File.exist?("/tmp/hi")
  end
end
