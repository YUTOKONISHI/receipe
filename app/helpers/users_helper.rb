module UsersHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm_new' 
      confirm_new_users_path
    elsif action_name == 'edit'
      confirm_edit_users_path
    end
  end
end
