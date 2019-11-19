class Ticket2sController < ApplicationController
  before_action :set_ticket2, only: [:show, :edit, :update, :destroy]

  # GET /ticket2s
  # GET /ticket2s.json
  def index
    @ticket2s = Ticket2.all
  end

  # GET /ticket2s/1
  # GET /ticket2s/1.json
  def show
  end

  # GET /ticket2s/new
  def new
    @ticket2 = Ticket2.new
  end

  # GET /ticket2s/1/edit
  def edit
  end

  # POST /ticket2s
  # POST /ticket2s.json
  def create
    @ticket2 = Ticket2.new(ticket2_params)

    respond_to do |format|
      if @ticket2.save
        format.html { redirect_to @ticket2, notice: 'Ticket2 was successfully created.' }
        format.json { render :show, status: :created, location: @ticket2 }
      else
        format.html { render :new }
        format.json { render json: @ticket2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket2s/1
  # PATCH/PUT /ticket2s/1.json
  def update
    respond_to do |format|
      if @ticket2.update(ticket2_params)
        format.html { redirect_to @ticket2, notice: 'Ticket2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket2 }
      else
        format.html { render :edit }
        format.json { render json: @ticket2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket2s/1
  # DELETE /ticket2s/1.json
  def destroy
    @ticket2.destroy
    respond_to do |format|
      format.html { redirect_to ticket2s_url, notice: 'Ticket2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket2
      @ticket2 = Ticket2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket2_params
      params.require(:ticket2).permit(:name, :price, :email, :tent)
    end
end
