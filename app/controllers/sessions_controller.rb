class SessionsController < Devise::SessionsController
  respond_to :json


  def create
    super do |user|
      if request.format.json?
        data = {
          firstName: user.first_name,
          lastName: user.last_name,
          id: user.id,
          token: user.authentication_token,
          email: user.email
        }
        render json: data , status: 201 and return
      end
    end
  end

end
