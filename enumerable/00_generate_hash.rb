#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# テーマ：配列からハッシュを作る

expected = { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3'}

# (1) keyとvalueが交互に並んだ配列から
kv = ['key1', 'value1', 'key2', 'value2', 'key3', 'value3']

p actual1 = Hash[*kv]
p expected == actual1

# (2) keyとvalueがペアになって並んだ配列から
kvs = [['key1', 'value1'], ['key2', 'value2'], ['key3', 'value3']]

p actual2 = Hash[*kv.flatten]
p expected == actual2

# (3) keyの配列とvalueの配列から
keys = ['key1', 'key2', 'key3']
values =  ['value1', 'value2', 'value3']

p actual3 = Hash[*keys.zip(values).flatten]
p expected == actual3
