class ScerrorsController < ApplicationController
  # GET /scerrors
  # GET /scerrors.json
  def index
    @scerrors = Scerror.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scerrors }
    end
  end

  # GET /scerrors/1
  # GET /scerrors/1.json
  def show
    @scerror = Scerror.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scerror }
    end
  end

  # GET /scerrors/new
  # GET /scerrors/new.json
  def new
    @scerror = Scerror.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scerror }
    end
  end

  # GET /scerrors/1/edit
  def edit
    @scerror = Scerror.find(params[:id])
  end

  # POST /scerrors
  # POST /scerrors.json
  def create
    @scerror = Scerror.new(params[:scerror])

    respond_to do |format|
      if @scerror.save
        format.html { redirect_to @scerror, notice: 'Scerror was successfully created.' }
        format.json { render json: @scerror, status: :created, location: @scerror }
      else
        format.html { render action: "new" }
        format.json { render json: @scerror.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scerrors/1
  # PUT /scerrors/1.json
  def update
    @scerror = Scerror.find(params[:id])

    respond_to do |format|
      if @scerror.update_attributes(params[:scerror])
        format.html { redirect_to @scerror, notice: 'Scerror was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scerror.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scerrors/1
  # DELETE /scerrors/1.json
  def destroy
    @scerror = Scerror.find(params[:id])
    @scerror.destroy

    respond_to do |format|
      format.html { redirect_to scerrors_url }
      format.json { head :no_content }
    end
  end
end
