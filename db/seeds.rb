# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "------------------------------------"
puts 'CREATING USERS'
puts "------------------------------------"

users = [{ name: "John Snow",       email: "jsnow@nightswatch.com"},
         { name: "Jaime Lannister", email: "king_slayer32@lannister.com"},
         { name: "Arya Start",      email: "little_miss_arya@housestark.com"}]

users.each do |user|
  u = User.create!(name: user[:name], email: user[:email])
  puts "User: #{u.email} - #{u.name}"
end

puts "\n"


puts "------------------------------------"
puts 'CREATING VENUES'
puts "------------------------------------"
venues = [{ name: "Winterfell Inn"},
          { name: "Mead Spirits"},
          { name: "The King's Head"}]


venues.each do |venue|
  v = Venue.create!(name: venue[:name])
  puts "Venue: #{v.name}"
end

puts "\n"



puts "------------------------------------"
puts 'CREATING TABS'
puts "------------------------------------"
tabs = [{ venue: Venue.first },
        { venue: Venue.second },
        { venue: Venue.third }]


tabs.each { |tab| Tab.create!(venue: tab[:venue]) }
puts "#{tabs.count} created"
puts "\n"



puts "------------------------------------"
puts 'CREATING USER_TABS'
puts "------------------------------------"
user_tabs = [{ user: User.first,  tab: Tab.first },  # Tab.first
             { user: User.second, tab: Tab.first },  # Tab.first
             { user: User.third,  tab: Tab.first },  # Tab.first
             { user: User.second, tab: Tab.second }, # Tab.second
             { user: User.third,  tab: Tab.second }, # Tab.second
             { user: User.third,  tab: Tab.third }]  # Tab.Third


user_tabs.each { |ut| UserTab.create!(user: ut[:user], tab: ut[:tab]) }
puts " #{user_tabs.count} created"
puts "\n"

puts "------------------------------------"
puts 'PAYMENTS'
puts "------------------------------------"
payments = [{ user_tab: UserTab.first,  value: 10, success: true,  payment_date: Date.today-3.days },
            { user_tab: UserTab.first,  value: 20, success: true,  payment_date: Date.today-1.days },
            { user_tab: UserTab.second, value: 10, success: true,  payment_date: Date.today-13.days },
            { user_tab: UserTab.second, value: 20, success: true,  payment_date: Date.today-5.days },
            { user_tab: UserTab.third,  value: 10, success: true,  payment_date: Date.today },
            { user_tab: UserTab.fourth, value: 10, success: false, payment_date: Date.today },
            { user_tab: UserTab.fifth,  value: 10, success: true,  payment_date: Date.today },
            { user_tab: UserTab.last,   value: 10, success: true,  payment_date: Date.today-2.days },
            { user_tab: UserTab.last,   value: 20, success: true,  payment_date: Date.today }]


payments.each { |payment| Payment.create!(user_tab: payment[:user_tab],
                                          value: payment[:value],
                                          success: payment[:success],
                                          payment_date: payment[:payment_date])}
puts " #{payments.count} created"
puts "\n"


