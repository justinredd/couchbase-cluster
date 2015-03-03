# couchbase-cluster

Cookbook to provision a couchbase cluster

## How to Use This Cookbook
Prerequisites:
+ chefdk
+ `cd [path to directory containing this README.md]`

Usage:
1. To create nodes `chef-client -z recipes/default.rb`
2. To destroy nodes `chef-client -z recipes/destroy_all.rb`

## Recipes
### default.rb
Provisions two nodes with empty runlists

### destroy_all.rb
Destroy all nodes
