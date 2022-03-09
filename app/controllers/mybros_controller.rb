class MybrosController < ApplicationController
  before_action :set_mybro, only: %i[ show edit update destroy ]

  # GET /mybros or /mybros.json
  def index
    @mybros = Mybro.all
  end

  # GET /mybros/1 or /mybros/1.json
  def show
  end

  # GET /mybros/new
  def new
    @mybro = Mybro.new
  end

  # GET /mybros/1/edit
  def edit
  end

  # POST /mybros or /mybros.json
  def create
    @mybro = Mybro.new(mybro_params)

    respond_to do |format|
      if @mybro.save
        format.html { redirect_to mybro_url(@mybro), notice: "Mybro was successfully created." }
        format.json { render :show, status: :created, location: @mybro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mybro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mybros/1 or /mybros/1.json
  def update
    respond_to do |format|
      if @mybro.update(mybro_params)
        format.html { redirect_to mybro_url(@mybro), notice: "Mybro was successfully updated." }
        format.json { render :show, status: :ok, location: @mybro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mybro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mybros/1 or /mybros/1.json
  def destroy
    @mybro.destroy

    respond_to do |format|
      format.html { redirect_to mybros_url, notice: "Mybro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mybro
      @mybro = Mybro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mybro_params
      params.require(:mybro).permit(:name, :age, :likes)
    end
end
