class SolvedsController < ApplicationController
  # GET /solveds
  # GET /solveds.json
def index
    # session[:role] = 1
    @search = params[:search_value]
    if @search != nil
      @unsolveds = Unsolved.where("topic like ?","%#{@search}%")
    else
      @unsolveds = Unsolved.order('updated_at desc')  
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unsolveds }
    end
  end


  # GET /unsolveds/1
  # GET /unsolveds/1.json
  def show
    @unsolved = Unsolved.find(params[:id])

    respond_to do |format|
      format.html #{ redirect_to solveds_path, notice: 'Unsolved problem was successfully added.' }
      format.json { render json: @unsolved }
    end
  end

  # GET /unsolveds/new
  # GET /unsolveds/new.json
  def new
    
  end

 def edit
    
  end

  # POST /unsolveds
  # POST /unsolveds.json
  def create
    
  end

  # PATCH/PUT /unsolveds/1
  # PATCH/PUT /unsolveds/1.json

  # DELETE /unsolveds/1
  # DELETE /unsolveds/1.json
  
  def update
   
  end

  # DELETE /unsolveds/1
  # DELETE /unsolveds/1.json
  def destroy
    
  end
  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def unsolved_params
     
    end
end
