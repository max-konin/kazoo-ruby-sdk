require 'kazoo-ruby-sdk/version'
require 'faraday'
require 'faraday_middleware'
require 'digest/md5'

require 'kazoo-ruby-sdk/configuration'
require 'kazoo-ruby-sdk/session'
require 'kazoo-ruby-sdk/base'
require 'kazoo-ruby-sdk/devices'
require 'kazoo-ruby-sdk/users'

module KazooRubySdk
  class << self
    attr_writer :configuration, :cache
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
    @cache = ActiveSupport::Cache::MemoryStore.new
  end
end