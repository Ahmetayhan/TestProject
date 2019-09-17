class DriversController < ApplicationController

  def index
    @drivers = Driver.order(created_at: :desc)
  end

  def show
    set_driver
  end

  def new
    @drivers = Driver.new
  end

  def edit
    set_driver
  end

  def create
    @driver = Driver.new(drivers_params)

    respond_to do |format|
      if @driver.save
        format.html { redirect_to @driver, notice: 'Driver was successfully created.' }
        format.json { render :show, status: :created, location: @driver }
      else
        format.html { render :new }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    set_driver
    respond_to do |format|
      if @drivers.update(drivers_params)
        format.html { redirect_to @drivers, notice: 'Drivers was successfully updated.' }
        format.json { render :show, status: :ok, location: @drivers }
      else
        format.html { render :edit }
        format.json { render json: @drivers.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    set_driver
    @driver.destroy
    respond_to do |format|
      format.html { redirect_to drivers_url, notice: 'Driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_driver
      @driver = Driver.find(params[:id])
    end


    def drivers_params
      params.require(:driver).permit(:name, :last_name, :birth_day, :tc_no, :tel, :address)
    end
end
