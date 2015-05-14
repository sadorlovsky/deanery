module ApplicationHelper
  require 'json'

  def full_title(page_title)
    base_title = "Diploma"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def sortable(column, title = nil)
    title ||= column
    direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    link_to title, sort: column, direction: direction
  end

  def ru_months
    months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
    months.to_json
  end

  def ru_weekdays
    weekdays = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"]
    weekdays.to_json
  end

  def genders
    genders = [["Мужской", 1], ["Женский", 0]]
  end

  def qualifications
    qualifications = [["Магистр", 1], ["Бакалавр", 0]]
  end
end
