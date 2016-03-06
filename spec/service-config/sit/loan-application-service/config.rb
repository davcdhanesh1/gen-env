#!/usr/bin/env ruby

environment.configure_group "crm" do |crm_config|
  crm_config.set "CRM_USERNAME", "crm"
  crm_config.set "CRM_URL", "https://crm.com"
end

environment.configure_group "bancos" do |bancos_config|
  bancos_config.set "BANCOS_USERNAME", "gtluser"
  bancos_config.set "BANCOS_PASSWORD", "PASSWORD"
end



