$:.unshift(File.expand_path('../../lib', __FILE__))
require 'xcrawl'

require 'rspec'

Rspec.configure do |c|
  c.mock_with :rspec
end