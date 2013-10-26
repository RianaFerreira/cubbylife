# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.destroy_all
Unit.destroy_all
EventParticipation.destroy_all
Tenant.destroy_all
User.destroy_all
Role.destroy_all


e1 = Event.create(:name => 'Fire Inspection', :description => 'Compulsory fire damper inspections', :start_date => '2014-07-01', :end_date => '2014-07-03', :start_time => '07:00:00', :end_time => '09:00:00', :provider => 'Fire System Inspectors', :cost => 12000, :frequency => 'Annual')
u1 = Unit.create(:unit_number => '503E', :floor => 5, :occupants => 2, :occupancy_date => '2011-07-01')
t1 = Tenant.create(:name => 'Fuzzy Lumpkin', :email => 'fuzzy@gmail.com', :phone => '0412015510')
un1 = User.create(:username => 'fuzzy', :password => 'test')
r1 = Role.create(:name => 'tenant', :description => 'leases apartment')


