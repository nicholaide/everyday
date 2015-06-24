module LoginMacros
  
  #controller login helper
  def set_user_session(user)
    session[:user_id] = user.id
  end
  
  #feature login helper
  def sign_in(user)
    visit root_path
    click_link 'Log In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
  end
  
end