['vim', 'emacs', 'nano', 'tree'].each do |p|
  package p do
    action :install
  end
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
