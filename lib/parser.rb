#!/usr/bin/env ruby
require 'optparse'

class Parser
 
  def self.parse!(args)
    options = {}
    opt_parser = OptionParser.new do |opt_parser|
      
      opt_parser.banner = "Usage: gen-env --in /path/to/input/environment.rb --out /path/to/output/environment.env" 
      
      opt_parser.on("-iNAME", "--in INPUT_FILE", "Input ruby file path") do |input_environment_file_path|
        options[:input_environment_file_path] = input_environment_file_path
      end

      opt_parser.on("-oNAME", "--out OUTPUT_FILE", "Output env file path") do |output_environment_file_path|
        options[:output_environment_file_path] = output_environment_file_path
      end

      opt_parser.on("-h", "--help", "Prints help") do
        puts opt_parser
        exit
      end

    end
 
    opt_parser.parse!(args)
    options
 end

  def self.isValid?(options)
    !(options[:output_environment_file_path].nil? || options[:input_environment_file_path].nil?)
  end

  def self.print_usages
    self.parse! %w[--help]
  end

end
