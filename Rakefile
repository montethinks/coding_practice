require "rake/testtask"

desc 'Run tests'
task :test do 
  files = Dir[File.dirname(File.absolute_path(__FILE__)) + '/**/*_test.rb']
  files.each {|file| require file }
end

desc 'Run tests'
task :default => :test
