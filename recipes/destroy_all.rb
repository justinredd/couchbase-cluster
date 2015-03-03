require 'chef/provisioning'

if Chef::Config[:solo]
  Chef::Log.warn('This recipe uses search. Chef Solo does not support ' \
  'search. Try again with "chef-client -z recipes/destroy_all.rb".')
else
  machine_batch do
    machines search(:node, '*:*').map { |n| n.name } # rubocop:disable all
    action :destroy
  end
end
