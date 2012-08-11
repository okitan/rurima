#!/usr/bin/env ruby

class SomeModel
  class << self
    def where(opts = {})
      key = opts[:type]
      10.times.map {|n| self.new(key => n) }
    end
  end

  attr_reader :to_hash

  def initialize(hash)
    @to_hash = hash
  end
end

types = [ :foo, :bar, :hoge, :piyo]

result = types.map.with_object({}) do |type, hash|
  hash[type] = SomeModel.where(:type => type).map(&:to_hash)
end

p result
