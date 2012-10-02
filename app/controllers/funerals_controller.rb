
class FuneralsController < ApplicationController
  # GET /funerals
  # GET /funerals.json
  def index
    @funerals = Funeral.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @funerals }
    end
  end

  # GET /funerals/1
  # GET /funerals/1.json
  def show
    @funeral = Funeral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @funeral }
    end
  end

  # GET /funerals/new
  # GET /funerals/new.json
  def new
    @funeral = Funeral.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @funeral }
    end
  end

  # GET /funerals/1/edit
  def edit
    @funeral = Funeral.find(params[:id])
  end

  # POST /funerals
  # POST /funerals.json
  def create
    @funeral = Funeral.new(params[:funeral])

    respond_to do |format|
      if @funeral.save
        format.html { redirect_to @funeral, notice: 'Funeral was successfully created.' }
        format.json { render json: @funeral, status: :created, location: @funeral }
      else
        format.html { render action: "new" }
        format.json { render json: @funeral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /funerals/1
  # PUT /funerals/1.json
  def update
    @funeral = Funeral.find(params[:id])

    respond_to do |format|
      if @funeral.update_attributes(params[:funeral])
        format.html { redirect_to @funeral, notice: 'Funeral was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @funeral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funerals/1
  # DELETE /funerals/1.json
  def destroy
    @funeral = Funeral.find(params[:id])
    @funeral.destroy

    respond_to do |format|
      format.html { redirect_to funerals_url }
      format.json { head :no_content }
    end
  end
end
