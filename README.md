Description
===========

Install and configure the [CloudFoundry](http://www.cloudfoundry.org/) Elasticsearch service.

Requirements
============

Cookbooks
---------

* cloudfoundry
* cloudfoundry\_service
* mongodb

Platform
--------

* Ubuntu

Tested on:

* Ubuntu 11.10

Attributes
==========

# Elasticsearch gateway

* `node['cloudfoundry_elasticsearch_service']['gateway']['log_level']` - Controls the amount of details that is logged. Defaults to `info`
* `node['cloudfoundry_elasticsearch_service']['gateway']['node_timeout']` - How long (in seconds) should the gateway wait for an answer from a node on provisioning requests. Defaults to `30`
* `node['cloudfoundry_elasticsearch_service']['gateway']['timeout']` - How long (in seconds) should the cloud_controller wait for an answer from the gateway. Defaults to `15`

# Elasticsearch node

* `node['cloudfoundry_elasticsearch_service']['node']['index']` - Unique index of the given service node. This *must* be unique among all nodes in a single cluster. Defaults to `0`
* `node['cloudfoundry_elasticsearch_service']['node']['capacity']` - Maximum number of service instances for this node. Defaults to `200`
* `node['cloudfoundry_elasticsearch_service']['node']['log_level']` - Controls the amount of details that is logged. Defaults to `info`
* `node['cloudfoundry_elasticsearch_service']['node']['port_range']['first']` / `['last']` - Range of ports assigned to service instances on this node. Defaults to `25000-40000`
* `node['cloudfoundry_elasticsearch_service']['node']['op_time_limit']` = Time limit (in seconds) for the node to complete the provisioning of a new instance. Defaults to `6`

Usage
=====

License and Author
==================

Author:: Innovation Factory (ruben.koster@innovationfactory.eu)

Copyright:: 2012 Innovation Factory

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
