class SessionsController < ApplicationController

  def create
    auth = request.env['omniauth.auth']

    user = User.find_by(facebook_uid: auth.uid)

    unless user
      user = User.create(
          facebook_uid: auth.uid,
          first_name: auth.info.first_name,
          last_name: auth.info.last_name
      )
    end

    session[:user_id] = user.id

    redirect_to root_path
  end

end
