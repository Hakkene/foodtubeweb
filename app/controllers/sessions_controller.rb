class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    respond_to do |format|
    user = User.find_by(nickname: params[:session][:nickname])
    if user && user.authenticate(params[:session][:password])
          # Wszystko dobrze, logujemy
          format.html {
            log_in user
            redirect_to user}
          format.json {
            render json: {message: 'poprawne dane'}}
          
    else
          # Niedobrze
          format.html {
            render 'new'}
            
          format.json {
            render json: {message: 'niepoprawne dane'}}
    end
  end
end

def destroy
  log_out
  redirect_to root_url
end



end
