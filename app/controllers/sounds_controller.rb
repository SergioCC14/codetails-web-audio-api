class SoundsController < ApplicationController
  include ApplicationHelper

   skip_before_filter :verify_authenticity_token 

  # GET /sounds
  # GET /sounds.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sounds }
    end
  end

  # GET /sounds/1
  # GET /sounds/1.json
  def show
    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @user }
    # end
  end

  # GET /sounds/new
  # GET /sounds/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /sounds/1/edit
  def edit
    respond_to do |format|
      format.html # edit.html.erb
      format.json { render json: @user }
    end

  end

  # POST /sounds
  def create
    # TODO:
    # Primero hay que comprobar si le llegan los parámetros
    # Luego lo creamos

    if (@sound = Sound.create(sound_params))
      @sounds = Sound.all
      
      respond_to do |format|
        format.html { redirect_to home_path, notice: 'sound was successfully updated.' }
        format.js { render }
      end
    else
      error404
    end
  end

  # DELETE /sounds/1
  # DELETE /sounds/1.json
  def destroy
    @sound = Sound.find(params[:id])
    @sound.destroy

    respond_to do |format|
      format.html { redirect_to admin_panel_path }
      format.json { head :no_content }
    end
  end

  private
    def sound_params
      params.require(:sound).permit(:audio)
    end

end
