#!/usr/bin/env ruby

environment.configure_group "crm" do |crm_config|
  crm_config.set "CRM_USERNAME", "crm"
  crm_config.set "CRM_URL", "https://crm.com"
end

environment.configure_group "another-third-party" do |another_third_party_config|
  another_third_party_config.set "USERNAME", "foobar"
  another_third_party_config.set "PASSWORD", "PASSWORD"
end



