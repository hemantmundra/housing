class PosController < ApplicationController
  # GET /pos
  # GET /pos.json
  def index
    @pos = Po.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pos }
    end
  end

  # GET /pos/1
  # GET /pos/1.json
  def show
    @po = Po.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @po }
    end
  end

  # GET /pos/new
  # GET /pos/new.json
  def new
    @po = Po.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @po }
    end
  end

  # GET /pos/1/edit
  def edit
    @po = Po.find(params[:id])
  end

  # POST /pos
  # POST /pos.json
  def create
    @po = Po.new(params[:po])

    respond_to do |format|
      if @po.save
        format.html { redirect_to @po, notice: 'Po was successfully created.' }
        format.json { render json: @po, status: :created, location: @po }
      else
        format.html { render action: "new" }
        format.json { render json: @po.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pos/1
  # PUT /pos/1.json
  def update
    @po = Po.find(params[:id])

    respond_to do |format|
      if @po.update_attributes(params[:po])
        format.html { redirect_to @po, notice: 'Po was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @po.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pos/1
  # DELETE /pos/1.json
  def destroy
    @po = Po.find(params[:id])
    @po.destroy

    respond_to do |format|
      format.html { redirect_to pos_url }
      format.json { head :no_content }
    end
  end
end
