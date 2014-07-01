#
# Cookbook Name:: wwwizer
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# copy wwwizer configuration files
# cookbook_file "/etc/nginx/sites-available/wwwizer" do
#   source "wwwizer"
#   action :create
# end

template "/etc/nginx/sites-available/wwwizer" do
  source "wwwizer.erb"
end

link "/etc/nginx/sites-enabled/wwwizer" do
  to "/etc/nginx/sites-available/wwwizer"
end