class MaintenanceCalculator
  def self.maintenance(gender, height, weight, age)
    @result = if gender == 'male'
               (66.47 + (13.75 * weight) + (5 * height) - (6.8 * age))
             else
               (665 + (9.6 * weight) + (1.8 * height) - (4.7 * age))
             end
  end
end