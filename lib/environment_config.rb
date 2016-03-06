#!/usr/bin/env ruby
require_relative 'group_config'

module Config

  class EnvironmentConfig

    attr_reader :env_variables

    def initialize
      @env_variables=[]
    end

    def configure_group(name, &block)
      group_config = Config::GroupConfig.new(name)
      block.call(group_config)
      @env_variables.push(group_config.group_hash)	
    end


    def generate_output_file(output_env_file)
      output_file = File.open(output_env_file, 'w')
      sb = StringIO.new
      config_groups_sorted_by_name = @env_variables.sort_by { |config_group| config_group[:group_name] }
      config_groups_sorted_by_name.each do |config_group|
        sb.puts "### #{config_group[:group_name].upcase} configurations, generated at #{Time.now}"
        sb.puts
        config_group[:variables]
          .sort_by{ |variable| variable.keys[0] }
          .each { |config_group_env_variable| sb.puts configure_env_variable(config_group_env_variable) }
        sb.puts
      end
      output_file.puts sb.string
    end

    private 
    def configure_env_variable(hash) 
      "#{hash.keys[0]}=#{hash.values[0]}"
    end

  end

end
