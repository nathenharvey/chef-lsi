['vim', 'emacs', 'nano', 'tree', 'git'].each do |p|
  package p do
    action :install
  end
end

file "#{ENV['HOME']}/.gitconfig" do
  content <<EOF
[user]
	name = Nathen Harvey
	email = nharvey@chef.io
EOF
end

# package 'vim' do
#   action :install
# end
# 
# package 'emacs' do
#   action :install
# end
# 
# package 'nano' do
#   action :install
# end
# 
# package 'tree' do
#   action :install
# end

file '/etc/motd' do
  action :create
  content 'This server is property of Chef Software, Inc.'
  owner 'root'
  group 'root'
  manage_symlink_source true
end
