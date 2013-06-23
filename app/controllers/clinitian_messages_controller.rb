class ClinitianMessagesController < ApplicationController
  # GET /clinitian_messages
  # GET /clinitian_messages.json
  def index
    @clinitian_messages = ClinitianMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clinitian_messages }
    end
  end

  # GET /clinitian_messages/1
  # GET /clinitian_messages/1.json
  def show
    @clinitian_message = ClinitianMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clinitian_message }
    end
  end

  # GET /clinitian_messages/new
  # GET /clinitian_messages/new.json
  def new
    @clinitian_message = ClinitianMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clinitian_message }
    end
  end

  # GET /clinitian_messages/1/edit
  def edit
    @clinitian_message = ClinitianMessage.find(params[:id])
  end

  # POST /clinitian_messages
  # POST /clinitian_messages.json
  def create
    @clinitian_message = ClinitianMessage.new(params[:clinitian_message])

    respond_to do |format|
      if @clinitian_message.save
        format.html { redirect_to @clinitian_message, notice: 'Clinitian message was successfully created.' }
        format.json { render json: @clinitian_message, status: :created, location: @clinitian_message }
      else
        format.html { render action: "new" }
        format.json { render json: @clinitian_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clinitian_messages/1
  # PUT /clinitian_messages/1.json
  def update
    @clinitian_message = ClinitianMessage.find(params[:id])

    respond_to do |format|
      if @clinitian_message.update_attributes(params[:clinitian_message])
        format.html { redirect_to @clinitian_message, notice: 'Clinitian message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clinitian_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinitian_messages/1
  # DELETE /clinitian_messages/1.json
  def destroy
    @clinitian_message = ClinitianMessage.find(params[:id])
    @clinitian_message.destroy

    respond_to do |format|
      format.html { redirect_to clinitian_messages_url }
      format.json { head :no_content }
    end
  end
end
