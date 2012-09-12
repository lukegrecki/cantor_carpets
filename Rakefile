require 'rake'
require 'rake/testtask'

namespace :test do
  Rake::TestTask.new(:fractal) do |t|
    t.test_files = FileList['test/fractal.rb']
    t.verbose = false
  end

  task :all => [:fractal]
end

desc 'Run all tests'
task :test => ['test:all']