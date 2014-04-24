class InstitucionOferentesController < ApplicationController
  # GET /institucion_oferentes
  # GET /institucion_oferentes.json
  def index
    @institucion_oferentes = InstitucionOferente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @institucion_oferentes }
    end
  end

  # GET /institucion_oferentes/1
  # GET /institucion_oferentes/1.json
  def show
    @institucion_oferente = InstitucionOferente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @institucion_oferente }
    end
  end

  # GET /institucion_oferentes/new
  # GET /institucion_oferentes/new.json
  def new
    @institucion_oferente = InstitucionOferente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @institucion_oferente }
    end
  end

  # GET /institucion_oferentes/1/edit
  def edit
    @institucion_oferente = InstitucionOferente.find(params[:id])
  end

  # POST /institucion_oferentes
  # POST /institucion_oferentes.json
  def create
    @institucion_oferente = InstitucionOferente.new(params[:institucion_oferente])

    respond_to do |format|
      if @institucion_oferente.save
        format.html { redirect_to @institucion_oferente, notice: 'Institucion oferente was successfully created.' }
        format.json { render json: @institucion_oferente, status: :created, location: @institucion_oferente }
      else
        format.html { render action: "new" }
        format.json { render json: @institucion_oferente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /institucion_oferentes/1
  # PUT /institucion_oferentes/1.json
  def update
    @institucion_oferente = InstitucionOferente.find(params[:id])

    respond_to do |format|
      if @institucion_oferente.update_attributes(params[:institucion_oferente])
        format.html { redirect_to @institucion_oferente, notice: 'Institucion oferente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @institucion_oferente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institucion_oferentes/1
  # DELETE /institucion_oferentes/1.json
  def destroy
    @institucion_oferente = InstitucionOferente.find(params[:id])
    @institucion_oferente.destroy

    respond_to do |format|
      format.html { redirect_to institucion_oferentes_url }
      format.json { head :no_content }
    end
  end
end
