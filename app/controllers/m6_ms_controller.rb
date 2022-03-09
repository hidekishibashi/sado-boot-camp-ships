class M6MsController < ApplicationController
  before_action :set_m6_m, only: %i[ show edit update destroy ]

  # GET /m6_ms or /m6_ms.json
  def index
    @m6_ms = M6M.all
  end

  # GET /m6_ms/1 or /m6_ms/1.json
  def show
  end

  # GET /m6_ms/new
  def new
    @m6_m = M6M.new
  end

  # GET /m6_ms/1/edit
  def edit
  end

  # POST /m6_ms or /m6_ms.json
  def create
    @m6_m = M6M.new(m6_m_params)

    respond_to do |format|
      if @m6_m.save
        format.html { redirect_to m6_m_url(@m6_m), notice: "M6 m was successfully created." }
        format.json { render :show, status: :created, location: @m6_m }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @m6_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m6_ms/1 or /m6_ms/1.json
  def update
    respond_to do |format|
      if @m6_m.update(m6_m_params)
        format.html { redirect_to m6_m_url(@m6_m), notice: "M6 m was successfully updated." }
        format.json { render :show, status: :ok, location: @m6_m }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @m6_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m6_ms/1 or /m6_ms/1.json
  def destroy
    @m6_m.destroy

    respond_to do |format|
      format.html { redirect_to m6_ms_url, notice: "M6 m was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m6_m
      @m6_m = M6M.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def m6_m_params
      params.require(:m6_m).permit(:text, :level, :type)
    end
end
