#!/usr/bin/env rake

desc "Update assets"
task :update do
  system("rm -rf bootstrap-datetimepicker-src")
  system("git clone git://github.com/tarruda/bootstrap-datetimepicker.git bootstrap-datetimepicker-src")
  system("cp bootstrap-datetimepicker-src/src/less/bootstrap-datetimepicker.less vendor/assets/stylesheets/bootstrap-datetimepicker.css.less")
  system("cp bootstrap-datetimepicker-src/src/js/bootstrap-datetimepicker.js vendor/assets/javascripts/bootstrap-datetimepicker.js")
  system("cp -R bootstrap-datetimepicker-src/src/js/locales/ vendor/assets/javascripts/locales/")
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
