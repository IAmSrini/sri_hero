class Hero1sController < ApplicationController
  before_action :set_hero1, only: [:show, :edit, :update, :destroy]

  # GET /hero1s
  # GET /hero1s.json
  def index
    @hero1s = Hero1.all
  end

  # GET /hero1s/1
  # GET /hero1s/1.json
  def show
  end

  # GET /hero1s/new
  def new
    @hero1 = Hero1.new
  end

  # GET /hero1s/1/edit
  def edit
  end

  # POST /hero1s
  # POST /hero1s.json
  def create
    @hero1 = Hero1.new(hero1_params)

    respond_to do |format|
      if @hero1.save
        format.html { redirect_to @hero1, notice: 'Hero1 was successfully created.' }
        format.json { render :show, status: :created, location: @hero1 }
      else
        format.html { render :new }
        format.json { render json: @hero1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hero1s/1
  # PATCH/PUT /hero1s/1.json
  def update
    respond_to do |format|
      if @hero1.update(hero1_params)
        format.html { redirect_to @hero1, notice: 'Hero1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @hero1 }
      else
        format.html { render :edit }
        format.json { render json: @hero1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hero1s/1
  # DELETE /hero1s/1.json
  def destroy
    @hero1.destroy
    respond_to do |format|
      format.html { redirect_to hero1s_url, notice: 'Hero1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero1
      @hero1 = Hero1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hero1_params
      params.require(:hero1).permit(:User_id, :day)
    end
end
