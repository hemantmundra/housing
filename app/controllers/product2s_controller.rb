class Product2sController < ApplicationController
  # GET /product2s
  # GET /product2s.json
  def index
    @product2s = Product2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product2s }
    end
  end

  # GET /product2s/1
  # GET /product2s/1.json
  def show
    @product2 = Product2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product2 }
    end
  end

  # GET /product2s/new
  # GET /product2s/new.json
  def new
    @product2 = Product2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product2 }
    end
  end

  # GET /product2s/1/edit
  def edit
    @product2 = Product2.find(params[:id])
  end

  # POST /product2s
  # POST /product2s.json
  def create
    @product2 = Product2.new(params[:product2])

    respond_to do |format|
      if @product2.save
        format.html { redirect_to @product2, notice: 'Product2 was successfully created.' }
        format.json { render json: @product2, status: :created, location: @product2 }
      else
        format.html { render action: "new" }
        format.json { render json: @product2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product2s/1
  # PUT /product2s/1.json
  def update
    @product2 = Product2.find(params[:id])

    respond_to do |format|
      if @product2.update_attributes(params[:product2])
        format.html { redirect_to @product2, notice: 'Product2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product2s/1
  # DELETE /product2s/1.json
  def destroy
    @product2 = Product2.find(params[:id])
    @product2.destroy

    respond_to do |format|
      format.html { redirect_to product2s_url }
      format.json { head :no_content }
    end
  end
end
