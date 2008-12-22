require 'fileutils'
include FileUtils

namespace :karl do
  desc "Install Karl's JavaScript and CSS into your public/ directory"
  task :install do
    Dir[File.dirname(__FILE__) + '/../gems/karl/javascripts/*'].each {|f| cp f, RAILS_ROOT+'/public/javascripts'}
    Dir[File.dirname(__FILE__) + '/../gems/karl/stylesheets/*'].each {|f| cp f, RAILS_ROOT+'/public/stylesheets'}
  end
end

