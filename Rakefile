require 'rake'
require 'rake/testtask'

namespace :test do
  Rake::TestTask.new(:fractal) do |t|
    t.test_files = FileList['test/fractal.rb']
    t.verbose = false
  end

  Rake::TestTask.new(:array2d) do |t|
    t.test_files = FileList['test/array2d.rb']
    t.verbose = false
  end

  task :all => [:fractal, :array2d]
end

desc 'Run all tests'
task :test => ['test:all']