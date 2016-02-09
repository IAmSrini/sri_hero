class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
	vall = params[:user][:name].reject(&:blank?) unless params[:user].nil?
	@user = User.new(name: vall)
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end
  
  ####================================================#######
  def display_page
	@user = User.new(name: params[:user][:name])
	hash = Hash.new
	hash = {"Sherry" => 1, "Boris" =>2, "Vicente" => 3, "Matte" => 4, "Jack" => 5,  "Kevin" =>6, "Zoe" => 7, "Jay" => 8,
				"Eadon" => 9, "Franky" => 10,  "Luis" => 11, "James" => 12}
	 hash.each do |key, value|
	 if key == @user.name
		@uservalue = value
	 end
	 end
  end
  
  def pay_schedule
	 @heros = Hero.where("day >= '2016-02-01' AND day <= '2016-02-31'")
  end
  
  def march
	@heros = Hero.where("day >= '2016-03-01' AND day <= '2016-03-31'")
  end
  def april
	@heros = Hero.where("day >= '2016-04-01' AND day <= '2016-04-31'")
  end
  def may
	@heros = Hero.where("day >= '2016-05-01' AND day <= '2016-05-31'")
  end
  def june
	@heros = Hero.where("day >= '2016-06-01' AND day <= '2016-06-31'")
  end
  def july
	@heros = Hero.where("day >= '2016-07-01' AND day <= '2016-07-31'")
  end
  def august
	@heros = Hero.where("day >= '2016-08-01' AND day <= '2016-08-31'")
  end
  def september
	@heros = Hero.where("day >= '2016-09-01' AND day <= '2016-09-31'")
  end
  def october
	@heros = Hero.where("day >= '2016-10-01' AND day <= '2016-10-31'")
  end
  def november
	@heros = Hero.where("day >= '2016-11-01' AND day <= '2016-11-31'")
  end
  def december
	@heros = Hero.where("day >= '2016-12-01' AND day <= '2016-12-31'")
  end
  ######===============================================######

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name)
    end
end
