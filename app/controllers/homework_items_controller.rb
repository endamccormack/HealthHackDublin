class HomeworkItemsController < ApplicationController
  # GET /homework_items
  # GET /homework_items.json
  def index
    @homework_items = HomeworkItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homework_items }
    end
  end

  # GET /homework_items/1
  # GET /homework_items/1.json
  def show
    @homework_item = HomeworkItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @homework_item }
    end
  end

  # GET /homework_items/new
  # GET /homework_items/new.json
  def new
    @homework_item = HomeworkItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @homework_item }
    end
  end

  # GET /homework_items/1/edit
  def edit
    @homework_item = HomeworkItem.find(params[:id])
  end

  # POST /homework_items
  # POST /homework_items.json
  def create
    @homework_item = HomeworkItem.new(params[:homework_item])

    respond_to do |format|
      if @homework_item.save
        format.html { redirect_to @homework_item, notice: 'Homework item was successfully created.' }
        format.json { render json: @homework_item, status: :created, location: @homework_item }
      else
        format.html { render action: "new" }
        format.json { render json: @homework_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /homework_items/1
  # PUT /homework_items/1.json
  def update
    @homework_item = HomeworkItem.find(params[:id])

    respond_to do |format|
      if @homework_item.update_attributes(params[:homework_item])
        format.html { redirect_to @homework_item, notice: 'Homework item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @homework_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homework_items/1
  # DELETE /homework_items/1.json
  def destroy
    @homework_item = HomeworkItem.find(params[:id])
    @homework_item.destroy

    respond_to do |format|
      format.html { redirect_to homework_items_url }
      format.json { head :no_content }
    end
  end
end
