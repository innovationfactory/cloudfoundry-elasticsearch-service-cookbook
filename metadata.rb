maintainer       "Ruben Koster"
maintainer_email "ruben.koster@innovationfactory.eu"
license          "Apache 2.0"
description      "Installs/Configures cloudfoundry-elasticsearch-service"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w( ubuntu ).each do |os|
  supports os
end

%w( cloudfoundry-common cloudfoundry_service ).each do |cb|
  depends cb
end

recommends 'java'
