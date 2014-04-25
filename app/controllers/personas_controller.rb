class PersonasController < ApplicationController
  # GET /personas
  # GET /personas.json

  @curso


  def index
    @personas = Persona.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personas }
    end
  end

  # GET /personas/1
  # GET /personas/1.json
  def show
    @persona = Persona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @persona }
    end
  end

  # GET /personas/new
  # GET /personas/new.json
  def new
    #@curso = Curso.find(params["idCurso"])
    @persona = Persona.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @persona }
    end
  end

  # GET /personas/1/edit
  def edit
    @persona = Persona.find(params[:id])
    if params["idCurso"]
      @curso = Curso.find(params["idCurso"])  
    end
      @curso = nil
  end

  # POST /personas
  # POST /personas.json
  def create
    #@persona = Persona.new(params[:persona])   

    @persona_aux = Persona.where(:nro_documento => params[:persona]["nro_documento"]).first
    #si existe la persona
    if @persona_aux != nil then
      #si esa persona ya está en ese curso
      if PersonaCurso.where(:persona_id => @persona_aux.id, :curso_id => params["idCurso"]).first == nil then 
        #se puede inscribir
        @persona = @persona_aux
        respond_to do |format|
          if @persona.save
            @curso = Curso.find(params["idCurso"])
            @persona_curso = PersonaCurso.create(:persona_id => @persona.id, :curso_id => @curso.id)
            @persona_curso.save
            format.html { redirect_to @persona, notice: 'Persona was successfully created.' }
            format.json { render json: @persona, status: :created, location: @persona }
          else          
            format.html { render  "new" }
            format.json { render json: @persona.errors, status: :unprocessable_entity }               
          end
    end
      else
        #no se puede inscribir
        @puede_inscribirse = false
        respond_to do |format|
          format.html { redirect_to "/cursos/cursos_disponibles", alert: 'Usted ya esta inscripto en ese curso.' }
          format.json { head :no_content }
        end
      end
    #no existe la persona
    else
      @persona = Persona.new(params[:persona])   
      @puede_inscribirse = true
      respond_to do |format|
        if @persona.save
          @curso = Curso.find(params["idCurso"])
          @persona_curso = PersonaCurso.create(:persona_id => @persona.id, :curso_id => @curso.id)
          @persona_curso.save
          format.html { redirect_to @persona, notice: 'Persona was successfully created.' }
          format.json { render json: @persona, status: :created, location: @persona }
        else
          format.html { render  "new" }
          format.json { render json: @persona.errors, status: :unprocessable_entity }             
        end
      end
    end
    
  end

  # PUT /personas/1
  # PUT /personas/1.json
  def update
    @persona = Persona.find(params[:id])

    respond_to do |format|
      if @persona.update_attributes(params[:persona])
        format.html { redirect_to @persona, notice: 'Persona was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personas/1
  # DELETE /personas/1.json
  def destroy
    @persona = Persona.find(params[:id])
    @persona.destroy

    respond_to do |format|
      format.html { redirect_to personas_url }
      format.json { head :no_content }
    end
  end

  def existe_persona
    @resultado = Persona.where(:nro_documento => params[:nro_doc]).first
    if @resultado
      #render :text => "Se encontro"
      render json: @resultado
    else
      render :text => "No se encontro"
    end
  end
end
