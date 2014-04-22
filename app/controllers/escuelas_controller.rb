class EscuelasController < ApplicationController
  # GET /escuelas
  # GET /escuelas.json
  def index
    @escuelas = Escuela.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @escuelas }
    end
  end

  # GET /escuelas/1
  # GET /escuelas/1.json
  def show
    @escuela = Escuela.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @escuela }
    end
  end

  # GET /escuelas/new
  # GET /escuelas/new.json
  def new
    @escuela = Escuela.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @escuela }
    end
  end

  # GET /escuelas/1/edit
  def edit
    @escuela = Escuela.find(params[:id])
  end

  # POST /escuelas
  # POST /escuelas.json
  def create
    @escuela = Escuela.new(params[:escuela])

    respond_to do |format|
      if @escuela.save
        format.html { redirect_to @escuela, notice: 'Escuela was successfully created.' }
        format.json { render json: @escuela, status: :created, location: @escuela }
      else
        format.html { render action: "new" }
        format.json { render json: @escuela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /escuelas/1
  # PUT /escuelas/1.json
  def update
    @escuela = Escuela.find(params[:id])

    respond_to do |format|
      if @escuela.update_attributes(params[:escuela])
        format.html { redirect_to @escuela, notice: 'Escuela was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @escuela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /escuelas/1
  # DELETE /escuelas/1.json
  def destroy
    @escuela = Escuela.find(params[:id])
    @escuela.destroy

    respond_to do |format|
      format.html { redirect_to escuelas_url }
      format.json { head :no_content }
    end
  end
end
