class UserController < ApplicationController
  def create
  end

  def update
  end

  def delete
  end

  def welcome
    @user_info = User.find_by_Username(params[:Username])

    @ph = Phone.find_by_user_id(@user_info.id)
    @result = @ph.number



    if @user_info.Password != params[:Password]
      flash[:alert] = "Invalid Login"
      render 'user/login.html.erb'
    # else @user_info.Password == params[:Password]
    #   render 'user/welcome.html.erb'
    # Don't need above, it assumes because of what's on the form action
    end
  end

    def register
      # Left matches DATABASE names. Right matches the FORM name.
      #Create a new user
      @user = User.new(Full_name: params[:Full_name], Street_Address: params[:Street_Address], City: params[:City], State: params[:State], Postal: params[:Postal], Country: params[:Country], Email: params[:Email], Username: params[:Username], Password: params[:Password])
      @user.save
      if (params[:Home] != '')
        @phone = Phone.new
        @phone.number = params[:Home]
        @home = @phone.number
        @user.phones << @phone
        @phone.save
      end
      if (params[:Cell] != '')
        @phone1 = Phone.new
        @phone1.number = params[:Cell]
        @cell = params[:Cell]
        @user.phones << @phone1
        @phone1.save
      end
      if (params[:Work] != '')
        @phone2 = Phone.new
        @phone2.number = params[:Work]
        @user.phones << @phone2
        @phone2.save
      end
      #Save to database
      render 'user/confirmation.html.erb'
    end




end
