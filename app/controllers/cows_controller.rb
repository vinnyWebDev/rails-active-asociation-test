class CowsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @cow = @user.cows.create(cow_params)
        redirect_to user_path(@user)
      end
    
      private
        def cow_params
          params.require(:cow).permit(:tag, :dob, :sex, :breed, :dam, :docility, :agression, :fertility, :calving, :milk, :calf)
        end
    end