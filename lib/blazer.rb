require "csv"
require "chartkick"
require "blazer/version"
require "blazer/engine"

module Blazer
  class << self
    attr_accessor :audit
    attr_reader :time_zone
    attr_accessor :user_name
    attr_accessor :user_class
    attr_accessor :timeout
    attr_accessor :use_local_storage
  end
  self.audit = true
  self.user_name = :name
  self.timeout = 15
  self.use_local_storage = false

  def self.time_zone=(time_zone)
    @time_zone = time_zone.is_a?(ActiveSupport::TimeZone) ? time_zone : ActiveSupport::TimeZone[time_zone.to_s]
  end
end
