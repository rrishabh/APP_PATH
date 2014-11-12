class UsermsController < ApplicationController
  before_action :set_userm, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @userms = Userm.all
    respond_with(@userms)
  end

  def show
    respond_with(@userm)
  end

  def new
    @userm = Userm.new
    respond_with(@userm)
  end

  def edit
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @userm.update(userm_params)
    respond_with(@userm)
  end

  def destroy
    @userm.destroy
    respond_with(@userm)
  end

  private
    def set_userm
      @userm = Userm.find(params[:id])
    end

    def userm_params
      params.require(:userm).permit(:name, :email, :login)
    end
end
