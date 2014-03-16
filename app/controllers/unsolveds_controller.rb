class UnsolvedsController < ApplicationController
  # GET /unsolveds
  # GET /unsolveds.json
  def index
    # session[:role] = 1
    @search = params[:search_value]
    if @search != nil
      @unsolveds = Unsolved.where("topic like ?","%#{@search}%")
    else
      @unsolveds = Unsolved.order('priority desc')  
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
       if(session[:role] >= 1)
        format.html # show.html.erb
        format.json { render json: @unsolved }
       else
        format.html { redirect_to root_path }
        format.json { head :no_content }
      end
      
    end
  end

  # GET /unsolveds/new
  # GET /unsolveds/new.json
  def new
    @unsolved = Unsolved.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unsolved }
    end
  end

 def edit
    @unsolved = Unsolved.find(params[:id])
  end

  # POST /unsolveds
  # POST /unsolveds.json
  def create
    @unsolved = Unsolved.new(unsolved_params)
    @topic = @unsolved.topic
    @department = @unsolved.department
    @details = @unsolved.details
   
    respond_to do |format|
      if @topic == '' || @department == '' || @details == ''
        format.html { redirect_to '/unsolveds/new', notice: '>>>>>>>>>Please fill in all the fields that required.<<<<<<<<<<' }
        format.json { render json: @topic }
      else
         if @unsolved.save
          format.html { redirect_to @unsolved, notice: 'Unsolved problem was successfully added.' }
          format.json { render json: @unsolved, status: :created, location: @unsolved }
        end
      end
      
      
     
    end
  end

  # PATCH/PUT /unsolveds/1
  # PATCH/PUT /unsolveds/1.json

  # DELETE /unsolveds/1
  # DELETE /unsolveds/1.json
  
  def update
    @unsolved = Unsolved.find(params[:id])

    respond_to do |format|
      if @unsolved.update_attributes(params[:unsolved])
        format.html { redirect_to @unsolved, notice: 'Unsolved was successfully updated.' }
        format.json { head :no_content }
      end
    end
  end
  # DELETE /unsolveds/1
  # DELETE /unsolveds/1.json
  def destroy
    @unsolved = Unsolved.find(params[:id])
    @unsolved.destroy

    respond_to do |format|
      format.html { redirect_to unsolveds_url }
      format.json { head :no_content }
    end
  end
  def destroy_solved
    @unsolved = Unsolved.find(params[:id])
    @unsolved.destroy

    respond_to do |format|
      format.html { redirect_to solveds_url }
      format.json { head :no_content }
    end
  end
  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def unsolved_params
      params.require(:unsolved).permit(:department, :details, :priority, :status, :topic)
    end
end
