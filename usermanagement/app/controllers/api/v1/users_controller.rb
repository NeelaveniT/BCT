class Api::V1::UsersController < ApplicationController
  def index
  end
  def add
    if request.post?
      if User.create(:name=>params[:name],:email=>params[:email],:status=>params[:status],:gender=>params[:gender])
          render json: {response: "Users are added successfully"}
      end
    end
  end

  def update
      if request.post?
        #@user=User.find_by(:id=>params[:id])
          User.update(params[:id],:name=>params[:name],:email=>params[:email],:status=>params[:status],:gender=>params[:gender])
          render json: {response: "Users are updated successfully"}
        #end
      else
          @user=User.find_by(:id=>params[:id])
        if @user == nil
          render json: {response: "Facing issue with given user id"}
        end
      end
  end

  def delete
        @user=User.find_by(:id=>params[:id])        # get the selected user entry
        if @user == nil
          render json: {response: "Facing issue with given user id"}
        else
          @user.destroy
          render json: {response: "Users deleted successfully"}
        end

  end
  def view
    @users=User.all
    render json: @users
  end
end
