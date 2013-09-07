include ApplicationHelper

def controller_sign_in(user)
  session[:user_id] = user.id
end