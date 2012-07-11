class FrameworksController < ApplicationController
  # GET /frameworks
  # GET /frameworks.json
  def index
    # @frameworks = Framework.all
    @frameworks = Framework.paginate(:per_page => 5, :page => params[:page])      


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @frameworks }
    end
  end

  # GET /frameworks/1
  # GET /frameworks/1.json
  def show
    @framework = Framework.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @framework }
    end
  end

  # GET /frameworks/new
  # GET /frameworks/new.json
  def new
    @framework = Framework.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @framework }
    end
  end

  # GET /frameworks/1/edit
  def edit
    @framework = Framework.find(params[:id])
  end

  # POST /frameworks
  # POST /frameworks.json
  def create
    @framework = Framework.new(params[:framework])
    @framework.user_id = current_user.id
    
    respond_to do |format|
      if @framework.save
        format.html { redirect_to @framework, notice: 'Framework was successfully created.' }
        format.json { render json: @framework, status: :created, location: @framework }
      else
        format.html { render action: "new" }
        format.json { render json: @framework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /frameworks/1
  # PUT /frameworks/1.json
  def update
    @framework = Framework.find(params[:id])

    respond_to do |format|
      if @framework.update_attributes(params[:framework])
        format.html { redirect_to @framework, notice: 'Framework was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @framework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frameworks/1
  # DELETE /frameworks/1.json
  def destroy
    @framework = Framework.find(params[:id])
    @framework.destroy

    respond_to do |format|
      format.html { redirect_to frameworks_url }
      format.json { head :no_content }
    end
  end
end
