class HerosController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]

  # GET /heros
  # GET /heros.json
  def index
    @heros = Hero.all
	@users = User.all
  end

  # GET /heros/1
  # GET /heros/1.json
  def show
  end

  # GET /heros/new
  def new
    @hero = Hero.new
  end

  # GET /heros/1/edit
  def edit
	@heros = Hero.all
  end
  
  def new_edit
	@hero = "Matte"
  end
  
  ####================================================#######
  def display_page_in_hero
	#@userid = params[:hero][:User_id].reject(&:blank?) unless params[:hero].nil?
	#@userid = id
	hash = Hash.new
	hash = {"Sherry" => 1, "Boris" =>2, "Vicente" => 3, "Matte" => 4, "Kevin" => 5, "Zoe" => 6, "Jay" =>7, "Eadon" => 8, 
				"Franky" => 9, "Luis" =>10, "James" => 11, "Jack" => 12}
	 # hash.each do |key, value|
	 # if key == @user.name
		# @uservalue = value
	 # end
	 # end
  end
  
  
####===================================================#######
  # POST /heros
  # POST /heros.json
  def create
    @hero = Hero.new(hero_params)

    respond_to do |format|
      if @hero.save
        format.html { redirect_to @hero, notice: 'Hero was successfully created.' }
        format.json { render :show, status: :created, location: @hero }
      else
        format.html { render :new }
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heros/1
  # PATCH/PUT /heros/1.json
  def update
    respond_to do |format|
      if @hero.update(hero_params)
        format.html { redirect_to @hero}
        format.json { render :show, status: :ok, location: @hero }
       else
         format.html { render :edit }
         format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heros/1
  # DELETE /heros/1.json
  def destroy
    @hero.destroy
    respond_to do |format|
      format.html { redirect_to heros_url, notice: 'Hero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero
      @hero = Hero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hero_params
      params.require(:hero).permit(:day, :User_id)
    end
end
