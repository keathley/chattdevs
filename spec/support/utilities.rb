include ApplicationHelper

def controller_sign_in(user)
  session[:user_id] = user.id
end

def oauth_response_for(user)
  {
    "provider" => user.provider,
    "uid" => user.uid,
    "info" => {
      "nickname" => user.name,
      "email" => user.email,
      "name" => user.name
    }
  }
end

def invalid_oauth_response
  {
    "provider" => 'github',
    "uid" => '12345',
    "info" => {
      "nickname" => "tester",
      "email" => "",
      "name" => ""
    }
  }
end