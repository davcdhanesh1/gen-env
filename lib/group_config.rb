#!/usr/bin/env ruby

module Configuration

  class Group

    attr_reader :config_group_hash

    def initialize(name)
      @config_group_hash = {:group_name => name, :variables => []}
    end

    def set(key, value)
      @config_group_hash[:variables].push( {key => value} )
    end

    def group_hash
      config_group_hash
    end

  end

end
