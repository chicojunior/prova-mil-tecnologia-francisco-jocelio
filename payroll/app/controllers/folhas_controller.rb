class FolhasController < ApplicationController
  before_action :set_folha, only: [:show, :edit, :update, :destroy]

  # GET /folhas
  # GET /folhas.json
  def index
    @folhas = Folha.all
  end

  # GET /folhas/1
  # GET /folhas/1.json
  def show
  end

  # GET /folhas/new
  def new
    @folha = Folha.new
    @folha.funcionarios.build
  end

  # GET /folhas/1/edit
  def edit
    @folha.funcionarios.build
  end

  # POST /folhas
  # POST /folhas.json
  def create
    @folha = Folha.new(folha_params)

    respond_to do |format|
      if @folha.save
        format.html { redirect_to @folha, notice: 'Folha was successfully created.' }
        format.json { render :show, status: :created, location: @folha }
      else
        format.html { render :new }
        format.json { render json: @folha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /folhas/1
  # PATCH/PUT /folhas/1.json
  def update
    respond_to do |format|
      if @folha.update(folha_params)
        format.html { redirect_to @folha, notice: 'Folha was successfully updated.' }
        format.json { render :show, status: :ok, location: @folha }
      else
        format.html { render :edit }
        format.json { render json: @folha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folhas/1
  # DELETE /folhas/1.json
  def destroy
    @folha.destroy
    respond_to do |format|
      format.html { redirect_to folhas_url, notice: 'Folha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folha
      @folha = Folha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def folha_params
      params.require(:folha).permit(:nome, :verba, :funcionarios, funcionarios_attributes: [ :nome, :idade, :salario ])
    end
end
