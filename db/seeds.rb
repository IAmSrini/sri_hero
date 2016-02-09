# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
hero_list = ['Sherry', 'Boris', 'Vicente', 'Matte', 'Jack', 'Sherry',
'Matte', 'Kevin', 'Kevin', 'Vicente', 'Zoe', 'Kevin',
'Matte', 'Zoe', 'Jay', 'Boris', 'Eadon', 'Sherry',
'Franky', 'Sherry', 'Matte', 'Franky', 'Franky', 'Kevin',
'Boris', 'Franky', 'Vicente', 'Luis', 'Eadon', 'Boris',
'Kevin', 'Matte', 'Jay', 'James', 'Kevin', 'Sherry',
'Sherry', 'Jack', 'Sherry', 'Jack'];
# weekdays_list = ['2016-02-06','2016-02-07','2016-02-13','2016-02-14','2016-02-20', '2016-02-21', '2016-02-27', '2016-02-28','2016-03-05',
					# '2016-03-06','2016-03-12','2016-03-13','2016-03-19','2016-03-20','2016-03-26','2016-03-27']; 
weekdays_list = []; inside = 7;
weekdays_list = [(Date.today+4).to_s,(Date.today+5).to_s] ### Change these depending on seeding date ###
1.upto(46) do |numb|
	weekdays_list.push((Date.today+4+inside).to_s); 
	weekdays_list.push((Date.today+5+inside).to_s); inside += 7
end
holidays_list = { Date.new(2016,1,1) => "New Year’s Day", 
				Date.new(2016,1,18) => "Martin Luther King Jr. Day",
				Date.new(2016,2,15) => "Presidents’ Day",
				Date.new(2016,3,31) => "Cesar Chavez Day",
				Date.new(2016,5,30) => "Memorial Day",
				Date.new(2016,7,4) =>  "Independence Day Observed",
				Date.new(2016,9,5) =>  "Labor Day",
				Date.new(2016,11,11) => "Veterans Day",
				Date.new(2016,11,24) => "Thanksgiving Day",
				Date.new(2016,11,25) => "Day after Thanksgiving",
				Date.new(2016,12,25) => "Christmas Day",
				Date.new(2016,12,26) => "Christmas Day Observed"}

# hero_list.each_with_index do|name,index|
	# if !(weekdays_list.include? (Date.today+index).to_s or holidays_list.keys.to_s.include? (Date.today+index).to_s)
		# user = User.where(name: name).first_or_create!
		# Hero.create! day: (Date.today+index), User_id: user.id
	# end
# end
@index = 0;
1.upto(8) do |month|
  hero_list.each_with_index do|name|
	if (weekdays_list.include? (Date.today+@index).to_s or holidays_list.keys.to_s.include? (Date.today+@index).to_s)
		@index += 1
	end
	if (weekdays_list.include? (Date.today+@index).to_s or holidays_list.keys.to_s.include? (Date.today+@index).to_s)
		@index += 1
	end
	if !(weekdays_list.include? (Date.today+@index).to_s or holidays_list.keys.to_s.include? (Date.today+@index).to_s)
		user = User.where(name: name).first_or_create!
		Hero.create! day: (Date.today+@index), User_id: user.id
	end
	@index += 1;
  end
end

# holidays_list.each do |date, holidayName|
	# Holiday.create!( date: date, holidayName: holidayName ) unless Holiday.where( date: date ).first
	# holiday = Holiday.find_by( holidayName: holidayName )
	# puts holiday.holidayName
# end