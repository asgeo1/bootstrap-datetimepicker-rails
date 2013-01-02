#!/usr/bin/env rake

desc "Update assets"
task :update do
  system("rm -rf bootstrap-datetimepicker-src")
  system("git clone git://github.com/tarruda/bootstrap-datetimepicker.git bootstrap-datetimepicker-src")
  system("cd bootstrap-datetimepicker-src; make deps; make build")
  system("cp bootstrap-datetimepicker-src/build/css/bootstrap-datetimepicker.min.css vendor/assets/stylesheets/bootstrap-datetimepicker.min.css")
  system("cp bootstrap-datetimepicker-src/build/js/bootstrap-datetimepicker.min.js vendor/assets/javascripts/bootstrap-datetimepicker.min.js")
  fixes
  system("git status")
end

def fixes

end

desc "Build"
task "build" do
  system("gem build bootstrap-datetimepicker-rails.gemspec")
end

desc "Build and publish the gem"
task :publish => :build do
  require File.expand_path('../lib/bootstrap-datetimepicker-rails/version', __FILE__)
  system("gem push bootstrap-datetimepicker-rails-#{BootstrapDatetimepickerRails::Rails::VERSION}.gem")
  system("git push")
end
