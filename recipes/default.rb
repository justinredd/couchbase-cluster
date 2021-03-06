#
# Cookbook Name:: couchbase-cluster
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'chef/provisioning/vagrant_driver'

with_driver 'vagrant'

vagrant_box 'opscode-centos-6.5' do
  url 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box'
end

with_machine_options vagrant_options: {
  'vm.box' => 'opscode-centos-6.5'
}

%w(foo bar).each do |node_name|
  machine node_name do
    tag "#{node_name}-tag"
    converge true
  end
end
