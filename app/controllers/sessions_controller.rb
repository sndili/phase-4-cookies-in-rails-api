class SessionsController < ApplicationController
  
  def index
    # binding.pry
    session[:session_hello] ||= "World"
    # session[:session_goodbye] ||= "goodbye"
    cookies[:cookies_hello] ||= "World"
    # cookies[:cookies_goodbye] ||= "goodbye"
    render json: { session: session, cookies: cookies.to_hash }
    # byebug    

  end

end