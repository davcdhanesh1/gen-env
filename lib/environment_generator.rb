#!/usr/bin/env ruby
require_relative 'environment_config'

class EnvironmentGenerator

  def generate(options)
    input_env_file_path = options[:input_environment_file_path]
    output_env_file_path = options[:output_environment_file_path]
    environment = Config::EnvironmentConfig.new
    p = Proc.new { }
    eval(File.read(input_env_file_path), p.binding)
    environment.generate_output_file(output_env_file_path)
    environment
  end

end
