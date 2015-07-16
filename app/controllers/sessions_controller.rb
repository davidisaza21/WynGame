class SessionsController < ApplicationController
  def new
    redirect_to '/auth/facebook'
  end
  def create
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid']).first || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
      # data = env["omniauth.auth"]
      # # p user = User.from_omniauth(env["omniauth.auth"])
      # # session[:user_id] = user.id
      # puts " "
      # p data.info.email
      # p data.info.name
      # puts " "
      # redirect_to root_url
  end

    def destroy
      reset_session
      redirect_to root_url, notice => 'Signed out'
    end
  #
  #   auth_hash = request.env['omniauth.auth']
  #   p "begin"
  #   p auth_hash["info"]["name"]
  #   p "past"
  # @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
  #   if @authorization
  #     render :text => "Welcome back #{@authorization.user.name}! You have already signed up."
  #   else
  #     user = User.new :name => auth_hash["info"]["name"], :email => auth_hash["info"]["name"]
  #     user.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
  #     user.save
  #
  #     render :text => "Hi #{user.name}! You've signed up."
  #   end
  # end

    def failure
    end

end

