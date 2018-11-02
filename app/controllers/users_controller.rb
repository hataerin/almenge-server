class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: %i[create check_duplicates], raise: false
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  
  # 지각비 랭킹 출력 
  def penaltyRanking
    penaltyRanking = User.select(:penalty)
    @penaltyRanking = @penaltyRanking.order(penalty: :desc).take(3)
    render json: @penaltyRanking
  end

  


  #프로젝트 멤버 id출력 
  def getProjectMember
    @getProjectMember =User.where(project_id:params[:project_id]).select(:id)
    render json: @getProjectMember
  end

  #멤버별 프로젝트 출결상황 
  def getProjectAbsence
    @getProjectAbsence =User.where(id:params[:id]).select(:project_absence)
   
    render json: @getProjectAbsence
  end


  # GET /users/1
  def show; render json: @user; end

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
  def destroy; @user.destroy; end

  # email 중복체크
  def check_duplicates
    # 중복이 있으면 true 없으면 false
    param! :email, String, required: true
    user = User.find_by(email: params[:email])
    res = user.nil? ? false : true
    render json: { result: res }.to_json
  end

  private


  def set_user; @user = User.find(params[:id]); end
  def user_params; params.require(:user).permit( :email, :password, :password_confirmation, :name, :birthday, :name, :project_id, :user_photo); end

  

end
