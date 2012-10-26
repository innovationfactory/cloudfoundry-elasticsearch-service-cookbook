#
# Cookbook Name:: cloudfoundry-elasticsearch-service
# Recipe:: elasticsearch
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

remote_file File.join(Chef::Config['file_cache_path'], node['cloudfoundry_elasticsearch_service']['elasticsearch']['distribution_file'])do
  owner node['cloudfoundry_common']['user']
  source node['cloudfoundry_elasticsearch_service']['elasticsearch']['distribution_url']
  checksum node['cloudfoundry_elasticsearch_service']['elasticsearch']['checksum']
  not_if do
    ::File.exists?(File.join(node['cloudfoundry_elasticsearch_service']['elasticsearch']['path'], "bin", "elasticsearch"))
  end
end

remote_file File.join(Chef::Config['file_cache_path'], node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['distribution_file']) do
  owner node['cloudfoundry_common']['user']
  source node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['distribution_url']
  checksum node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['checksum']
  not_if do
    ::File.exists?(File.join(node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['path'], node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['distribution_file']))
  end
end

bash "Install elasticsearch" do
  cwd Chef::Config['file_cache_path']
  user node['cloudfoundry_common']['user']
  code <<-EOH
  tar xzf #{node['cloudfoundry_elasticsearch_service']['elasticsearch']['distribution_file']}
  mv #{node['cloudfoundry_elasticsearch_service']['elasticsearch']['distribution_file'].gsub(/.tar.gz/,'')} #{node['cloudfoundry_elasticsearch_service']['elasticsearch']['path']}
  EOH
  not_if do
    ::File.exists?(File.join(node['cloudfoundry_elasticsearch_service']['elasticsearch']['path'], "bin", "elasticsearch"))
  end
end

bash "Install elasticsearch-http-basic plugin" do
  cwd Chef::Config['file_cache_path']
  user node['cloudfoundry_common']['user']
  code <<-EOH
  mkdir -p #{node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['path']}
  mv #{node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['distribution_file']} #{node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['path']}
  EOH
  not_if do
    ::File.exists?(File.join(node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['path'], node['cloudfoundry_elasticsearch_service']['http_basic_plugin']['distribution_file']))
  end
end
