module ApplicationHelper
  require 'json'

  def full_title(page_title)
    base_title = "Деканат"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def ru_months
    months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
    months.to_json
  end

  def ru_weekdays
    weekdays = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"]
    weekdays.to_json
  end

end
