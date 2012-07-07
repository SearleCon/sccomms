class SccommandsController < ApplicationController
  # GET /sccommands
  # GET /sccommands.json
  def index
    @sccommands = Sccommand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sccommands }
    end
  end

  # GET /sccommands/1
  # GET /sccommands/1.json
  def show
    @sccommand = Sccommand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sccommand }
    end
  end

  # GET /sccommands/new
  # GET /sccommands/new.json
  def new
    @sccommand = Sccommand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sccommand }
    end
  end

  # GET /sccommands/1/edit
  def edit
    @sccommand = Sccommand.find(params[:id])
  end

  # POST /sccommands
  # POST /sccommands.json
  def create
    @sccommand = Sccommand.new(params[:sccommand])

    respond_to do |format|
      if @sccommand.save
        format.html { redirect_to @sccommand, notice: 'Sccommand was successfully created.' }
        format.json { render json: @sccommand, status: :created, location: @sccommand }
      else
        format.html { render action: "new" }
        format.json { render json: @sccommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sccommands/1
  # PUT /sccommands/1.json
  def update
    @sccommand = Sccommand.find(params[:id])

    respond_to do |format|
      if @sccommand.update_attributes(params[:sccommand])
        format.html { redirect_to @sccommand, notice: 'Sccommand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sccommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sccommands/1
  # DELETE /sccommands/1.json
  def destroy
    @sccommand = Sccommand.find(params[:id])
    @sccommand.destroy

    respond_to do |format|
      format.html { redirect_to sccommands_url }
      format.json { head :no_content }
    end
  end
end
