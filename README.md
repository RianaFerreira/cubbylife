# Assignment1 CubbyLife

## Original project intent
Create a (web/mobile) solution that can be used to communicate with tenants within a building.
Provide features that allow notifications, appointments to be scheduled, complaints and requests to be logged.
A "bulletin board" for tenants to post notices, meet-ups, want ads, prefered providers for building services and information.

## Actual project scope
**NB** There is no registration feature yet so the database has been seeded with an admin user (username: admin, password: admin) and a tenant user (username: fuzzy, password: test).
* Logged out landing page and a login feature for all users.
* Used credentials to customise features available based on the logged in user's role.
* The admin user has access to the events and apartment menus along with the add, edit and delete features for events and units.
* The admin user can view all apartments participating in an event selected on the Event page.
* The admin user can select an apartment and view all the events they're participating in.
* The tenant user has access to view all events the admin user has created and register their own unit for the event.

## REFERENCES
http://tympanus.net/codrops/
http://css-tricks.com/
http://html5doctor.com/
http://dev.tutsplus.com/
http://www.smashingmagazine.com/category/design/
http://api.rubyonrails.org/
http://guides.rubyonrails.org/
http://getbootstrap.com

## WISHLIST
* User create feature to replace the user seeding
* Notifications for new events created
* Calendar feature for event scheduling to avoid timeslot conflicts
* Improve the design
* Style footer, incorporate more images, improve layouts for forms.
* Change the model to cater for any type of user (owner, tenant, agent & building manager)
* Expand the features to allow tenants to be rated and reviewed & for tenants to be able to rate and review their apartments.

