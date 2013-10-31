module ApplicationHelper
  def authentication_menu
    # Build a list of links depending on the user's permissions.
    links = ""
    if @authenticated.present?
    #  if @authenticated.is_admin
    #    links += "<li>#{link_to("Show Users", users_path)}</li>"
    #  end
      links += "#{link_to('Logout', login_path, :method => 'delete', :confirm => 'Are you sure?')} "
      links += "#{link_to('Events', events_path)} "
      links += "#{link_to('Units', units_path)} "
      links += "#{link_to('Event Schedule', event_participation_index_path)} "
    else
      links += "#{link_to('Login', login_path)} "
    end

    links
  end
end
