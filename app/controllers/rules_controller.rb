class RulesController < ApplicationController
  # GET /rules
  # GET /rules.json
  def index
    @rules = Rule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rules }
    end
  end

  # GET /rules/1
  # GET /rules/1.json
  def show
    
  end

  # GET /rules/new
  # GET /rules/new.json
  def new
  
  end

  # GET /rules/1/edit
  def edit
   
  end

  # POST /rules
  # POST /rules.json
  def create
   
  end

  # PATCH/PUT /rules/1
  # PATCH/PUT /rules/1.json
  def update
   
  end

  # DELETE /rules/1
  # DELETE /rules/1.json
  def destroy
   
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def rule_params
      params.require(:rule).permit()
    end
end
