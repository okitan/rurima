#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# テーマ：与えられた配列を適当に並べ替えて２分割してください。
# 用途　：チームで昼飯を食いに行く会の組み合わせを決める
# 　　　　→あまり人数が多いと店に入れないので、
# 　　　　　10人前後の参加者をランダムに２組に分けたい

all_member = 10.times.to_a

team_a, team_k  = all_member.shuffle.partition.with_index {|e, i| i % 2 == 0 }

p team_a, team_k
