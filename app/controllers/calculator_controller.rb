require 'maintenance_calculator'
class CalculatorController < ApplicationController
  def calculate
  end
  
  def maintenance
    @height = params[:height]
    @weight = params[:weight]
    @age = params[:age]
    @gender = params[:gender]
    @activity = params[:activity]
    @cal = (MaintenanceCalculator.maintenance(@gender, @height.to_f,
                                             @weight.to_f, @age.to_f)) * @activity.to_f
  end
  def weightgoal
    @goal = params[:goal]
    if @goal == fatloss
      @cal = @cal*80/100
    else
      @cal = @cal*120/100
    end
  end
end