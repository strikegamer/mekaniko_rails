# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

    achievements = Achievement.create!([
      { :title => 'White Belt',           :description => 'Get Rolling, make your first share',     :image => 'achievements/White_belt-first_share.jpg'},
      { :title => 'Yellow Belt',          :description => 'Share a task, a link and an experience', :image => 'achievements/Yellow_belt-first_combo_share.jpg'},
      { :title => 'Orange Belt',          :description => 'Share 5 items',                          :image => 'achievements/Orange_belt-five_shares.jpg'},
      { :title => 'Green Belt',           :description => '5 of a kind',                            :image => 'achievements/Green_belt-five_of_a_kind.jpg'},
      { :title => 'Blue Belt',            :description => 'Share 20 items',                         :image => 'achievements/Blue_belt-20_shares.jpg'},
      { :title => 'Brown Belt',           :description => 'Share 50 items',                         :image => 'achievements/Brown_belt-50_shares.jpg'},
      { :title => 'Good Boy',             :description => 'Help someone out with a task',           :image => 'achievements/Good_boy-first_assist.jpg'},
      { :title => 'Santas Little Helper', :description => 'Help out 5 times',                       :image => 'achievements/Santas_little_helper-5_assists.jpg'},
      { :title => 'Good Samaritan',       :description => 'Help out out 15 times',                  :image => 'achievements/Good_samaritan-15_assists.jpg'},
      { :title => 'Think of yourself',    :description => 'Help out out 25 times',                  :image => 'achievements/Think_of_yourself-25_assists.jpg'},
      { :title => 'Jezus',                :description => 'Help out out 50 times',                  :image => 'achievements/Jezus-50_assists.jpg'},
      { :title => 'First Words',          :description => 'First comment on a share',               :image => 'achievements/First_comment.jpg'},
      { :title => 'Baby Steps',           :description => 'Make 10 comments',                       :image => 'achievements/10_comment.jpg'},
      { :title => 'Talker',               :description => 'Make 50 comments',                       :image => 'achievements/50_comment.jpg'},
      { :title => 'Spraakwaterval',       :description => 'Make 100 comments',                      :image => 'achievements/100_comment.jpg'},
      { :title => 'Hot',                  :description => '10 people comment on your share',        :image => 'achievements/10_comments_on_share.jpg'},
      { :title => 'Bomb',                 :description => '20 people comment on your post',         :image => 'achievements/20_comments_on_share.jpg'},
      { :title => 'Top Dog',              :description => 'Get the top of the ranking',             :image => 'achievements/ranking.jpg'},
      { :title => 'Shareaholic',          :description => 'Push Mekanikos button for one week',     :image => 'achievements/five_days_in_a_row.jpg'},
      { :title => 'Teamwork',             :description => 'Work together with 4 colleagues',        :image => 'achievements/Teamwork.jpg'},
      { :title => 'Workaholic',           :description => 'Share five tasks in one day',            :image => 'achievements/Workaholic.jpg'},
      { :title => 'Pink Belt',            :description => 'It\'s okay to be gay',                   :image => 'achievements/pink-belt.png'}
    ])
