#!/usr/bin/env ruby
# Somemodel.conditions => Array or nil
# target => given parameter (must be symbol)

target = $*.first
$target = target # XXX:

class SomeModel
  attr_reader :i

  def initialize(i)
    @i = i
  end

  def conditions
    i % 2 == 0 ? %w[ $target ] : nil  # umhhh
  end

  def inspect
    "SomeModel:#{i}"
  end

  class << self
    def where(opts = {})
      10.times.map.with_index {|n| SomeModel.new(n) }
    end
  end
end

result = []
records = SomeModel.where(some_flag: true)

p records

# not so beautiful
p result = records.keep_if {|e| !e.conditions || e.conditions.include?(target) }
