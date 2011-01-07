require 'cucumber/rake/task'
require 'rspec/core/rake_task'

Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w{--format pretty}
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w{--color --format doc}
end
