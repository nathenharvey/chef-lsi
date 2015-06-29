require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  #
  it 'port 80 is listening' do
    expect(port 80).to be_listening
  end

  it 'writes the proper home page'

  it 'has a document root directory'
end
