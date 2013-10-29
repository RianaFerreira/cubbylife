module ApplicationHelper
  def authentication_menu
    if @authenticated.present?
      "#{ link_to('Edit Profile', edit_users_path) }" +
      "#{ link_to('Logout ' + @authenticated.name, login_path, :method => 'delete', :confirm => 'Are you sure?') }"
    else
      "#{ link_to('Create Account', new_user_path) }" +
      "#{ link_to('Login', login_path) }"
    end
  end
end
