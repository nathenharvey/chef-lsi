require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  ['emacs', 'nano', 'tree', 'vim-enhanced'].each do |p|
    it "installs #{p}" do
      expect(package "#{p}" ).to be_installed
    end
  end

  it "creates a message of the day" do
    expect(file "/etc/motd").to be_a_file
  end

  it "creates a message of the day with the correct content" do
    expect(file "/etc/motd").to contain /property of/i
  end
end
