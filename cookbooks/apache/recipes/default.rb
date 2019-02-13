#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#


package "httpd" do
action :install
end

s3_file "/var/www/html/index.html" do
    remote_path "index.html"
    bucket "development"
    aws_access_key_id "AKIAJE4BS2DDAE65ZGYA"
    aws_secret_access_key "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"
    s3_url "https://s3.ap-south-1.amazonaws.com/ddemo1234/development/index.html"
    owner "root"
    group "root"
    mode "0644"
    action :create
end

service "httpd" do
action [:enable , :start]
end

