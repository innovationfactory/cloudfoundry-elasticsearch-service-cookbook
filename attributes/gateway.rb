#
# Cookbook Name:: cloudfoundry-elasticsearch-service
# Attributes:: gateway
#
# Copyright 2012, Innovation Factory
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Log level for the mongodb service gateway.
default['cloudfoundry_elasticsearch_service']['gateway']['log_level'] = "info"

# How long (in seconds) should the gateway wait for an answer from a node on provisioning requests.
default['cloudfoundry_elasticsearch_service']['gateway']['node_timeout'] = 30

# How long (in seconds) should the cloud_controller wait for an answer from the gateway.
default['cloudfoundry_elasticsearch_service']['gateway']['timeout'] = 15
