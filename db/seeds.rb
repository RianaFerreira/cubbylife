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


e1 = Event.create(:name => 'Fire Door Replacement', :description => 'Replacing selected apartment doors that comply with fire regulations', :start => '2013-11-01 07:00:00', :end => '2013-11-03 17:00:00', :provider => 'Fire System Inspectors', :cost => 10000.00, :frequency => 'Ad hoc')
e2 = Event.create(name: "Newtown Festival", description: "Road closure on Carillon Avenue for the entire day,...", start: "2013-11-04 09:00:00", end: "2013-11-04 17:00:00", provider: "Newtown Village Council", cost: 100.00, frequency: "Ad hoc")
e3 = Event.create(name: "Fire Inspection", description: "Annual fire inspection for all units in the buildin...", start: "2014-07-01 07:00:00", end: "2012-07-12 17:00:00", provider: "", cost: nil, frequency: "Annual")
e4 = Event.create(name: "Coffee Shop Marathon", description: "Road closure for the marathon will restrict access ...", start: "2013-10-31 07:00:00", end: "2013-11-01 17:00:00", provider: "someone", cost: 200.00, frequency: "Annual")
e5 = Event.create(name: "Fire Door Replacement", description: "Replacing selected apartment doors that comply with...", start: "2013-11-01 07:00:00", end: "2013-11-03 17:00:00", provider: "Fire System Inspectors", cost: 300.00, frequency: "Ad hoc")

u1 = Unit.create(unit_number: '504E', floor: 5, occupants: 2, occupancy_date: '2011-07-01')
u2 = Unit.create(unit_number: "502E", floor: 5, occupants: 1, occupancy_date: "2013-10-01")
u3 = Unit.create(unit_number: "101E", floor: 1, occupants: 4, occupancy_date: "2010-02-01")
u4 = Unit.create(unit_number: "102E", floor: 1, occupants: 2, occupancy_date: "2011-06-01")
u5 = Unit.create(unit_number: "201E", floor: 2, occupants: 1, occupancy_date: "2013-11-01")
u6 = Unit.create(unit_number: "303E", floor: 3, occupants: 1, occupancy_date: "2013-10-30")
u7 = Unit.create(unit_number: "503E", floor: 5, occupants: 2, occupancy_date: "2011-07-01")

t1 = Tenant.create(:name => 'Fuzzy Lumpkin', :email => 'fuzzy@gmail.com', :phone => '0412015510')
un1 = User.create(:username => 'fuzzy', :password => 'test')

r1 = Role.create(:name => 'tenant', :description => 'leases apartment')
r2 = Role.create(:name => 'admin', :description => 'building manager')


p1 = EventParticipation.create(:date => Date.today, :time => Time.now)
u1.event_participations << p1
e1.event_participations << p1

t1.user = un1
u1.tenants << t1
