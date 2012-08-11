#!/usr/bin/env ruby
# @option is parsed query parameter
# e.g. { 'foo' => 'bar', 'hoge' => 'piyo'

require "facets/string/camelcase"

hash = { "foo" => "bar", "hoge" => "piyo", "example_here" => "homuhomu" }

camelized_hash = hash.keys.each.with_object({}) do |key, h|
  h[key.to_s.camelcase(:upper)] = hash[key]
end

p camelized_hash
