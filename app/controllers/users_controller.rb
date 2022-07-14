class UsersController < ApplicationController
    protect_from_forgery with: :null_session
    def usersList
        data = User.all
        render json: data
    end
    def addUser
        data=User.new({
            "user_name"=>params[:user_name],
            "user_email"=>params[:user_email],
            "user_password"=>params[:user_password]
        })
        data.save
        render json: params
    end
    def login
        user = User.find_by(user_email: params['user_email'])
        if(user)
            if(user.user_password == params['user_password'])
                render json: user
            else
                message={
                    "text"=>"Wrong Credentils"
                }
                render json: message
            end
        else
            message={
                    "text"=>"Email does not exist."
                }
                render json: message
        end        
    end

end
