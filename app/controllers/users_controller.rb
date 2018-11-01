class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: :create, raise: false
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  
  # 지각비 랭킹 출력 
  def penaltyRanking
    penaltyRanking = User.all.select(:penalty)
    @penaltyRanking = @penaltyRanking.order(penalty: :desc).take(3)

    #for i in 0..2

    #end
    render json: @penaltyRanking
  end

  #해당월 입력시 생일자 출력 
  def getUserInfoByBirthMonth
    
    
  end


  #프로젝트 멤버 출력 
  def getProjectMember
    @getProjectMember =User.find(params[:project_id]).select(:id)
  end
  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit( :email, :password, :password_confirmation, :name, :birthday, :session_absence, :project_absence, :penalty, :project_id, :user_photo)
    end







end
