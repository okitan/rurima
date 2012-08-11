#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# 文字列を逆順にして返す関数を作成してください。
# ただし Array#reverse, Array#reverse! は使用禁止です。

string = "okitan desu"

# I answered before
reversed_string = ""
string.length.times do |i|
  reversed_string[i] = string[string.length-i-1]
end
p reversed_string

# or
reversed_string = string.each_char.with_object([]) do |c, array|
  array.unshift(c)
end.join("")

p reversed_string

# or this
string.instance_eval do
  alias each each_char
end
string.extend Enumerable

p string.inject([]) {|array, c| array.unshift(c) }.join("")
