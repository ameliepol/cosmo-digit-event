module ApplicationHelper
  include Pagy::Frontend

  def time_with_day(date)
    date.strftime("%d/%m/%Y %H:%M")
  end

end
