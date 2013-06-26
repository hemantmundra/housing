class Product1sController < ApplicationController
  # GET /product1s
  # GET /product1s.json
  def index
    @product1s = Product1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product1s }
    end
  end

  # GET /product1s/1
  # GET /product1s/1.json
  def show
    @product1 = Product1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product1 }
    end
  end

  # GET /product1s/new
  # GET /product1s/new.json
  def new
    @product1 = Product1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product1 }
    end
  end

  # GET /product1s/1/edit
  def edit
    @product1 = Product1.find(params[:id])
  end

  # POST /product1s
  # POST /product1s.json
  def create
    @product1 = Product1.new(params[:product1])

    respond_to do |format|
      if @product1.save
        format.html { redirect_to @product1, notice: 'Product1 was successfully created.' }
        format.json { render json: @product1, status: :created, location: @product1 }
      else
        format.html { render action: "new" }
        format.json { render json: @product1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product1s/1
  # PUT /product1s/1.json
  def update
    @product1 = Product1.find(params[:id])

    respond_to do |format|
      if @product1.update_attributes(params[:product1])
        format.html { redirect_to @product1, notice: 'Product1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product1s/1
  # DELETE /product1s/1.json
  def destroy
    @product1 = Product1.find(params[:id])
    @product1.destroy

    respond_to do |format|
      format.html { redirect_to product1s_url }
      format.json { head :no_content }
    end
  end
end
