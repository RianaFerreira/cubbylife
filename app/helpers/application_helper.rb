module ApplicationHelper
  def authentication_menu
    # Build a list of links depending on the user's permissions.
    links = ""
    if @authenticated.present?

      links += "#{link_to('Logout', login_path, :method => 'delete')} "
      links += "#{link_to('Events', events_path)} "


      #raise @authenticated.inspect
      if @authenticated.is_admin?
        links += "#{link_to('Units', units_path)} "
        #links += "#{link_to('Event Schedule', event_participation_index_path)} "
      end
    else
      links += "#{link_to('Login', login_path)} "
    end

    links
  end
end
