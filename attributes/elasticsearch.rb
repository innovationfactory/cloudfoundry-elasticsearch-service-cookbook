#
# Cookbook Name:: cloudfoundry-elasticsearch-service
# Attributes:: elasticsearch
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

default['cloudfoundry_elasticsearch_service']['elasticsearch']['version'] = "0.19.4"
default['cloudfoundry_elasticsearch_service']['elasticsearch']['distribution_file'] = "elasticsearch-#{default['cloudfoundry_elasticsearch_service']['elasticsearch']['version']}.tar.gz"
default['cloudfoundry_elasticsearch_service']['elasticsearch']['distribution_url'] = "http://github.com/downloads/elasticsearch/elasticsearch/#{default['cloudfoundry_elasticsearch_service']['elasticsearch']['distribution_file']}"
default['cloudfoundry_elasticsearch_service']['elasticsearch']['path'] = "/usr/local/share/elasticsearch"

default['cloudfoundry_elasticsearch_service']['http_basic_plugin']['version'] = "1.0.3"
default['cloudfoundry_elasticsearch_service']['http_basic_plugin']['distribution_file'] = "elasticsearch-http-basic-#{default['cloudfoundry_elasticsearch_service']['http_basic_plugin']['version']}.jar"
default['cloudfoundry_elasticsearch_service']['http_basic_plugin']['distribution_url'] = "http://github.com/downloads/Asquera/elasticsearch-http-basic/#{default['cloudfoundry_elasticsearch_service']['http_basic_plugin']['distribution_file']}"
default['cloudfoundry_elasticsearch_service']['http_basic_plugin']['path'] = File.join(default['cloudfoundry_elasticsearch_service']['elasticsearch']['path'], "plugins", "http-basic")

default['cloudfoundry_elasticsearch_service']['elasticsearch']['checksum'] = 'dfcfe4189e42b60b049f9b203799cf24c9c1581673eb2df96dda34a67372facd'
default['cloudfoundry_elasticsearch_service']['http_basic_plugin']['checksum'] = 'b7e23538301d2d21abe55f7f871946ea597cc00b57b65657937e0dd384c4f4b4'
