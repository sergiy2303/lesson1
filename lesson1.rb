require 'date'
class Lesson1
  def sum(val = 0)
    result = 0
    val.to_s.each_char { |char| result += char.to_i }
    result
  end

  def age(birthday)
    return 'Invalid Date Format' if birthday.to_s.empty?
    date = birthday.split('/')
    sec = Time.now - Time.new(date[2], date[1], date[0])
    mins = sec / 60
    hours = mins / 60
    days = hours / 24
    years = days / 365
    "Я живу #{years} года или #{days} дней или #{hours}
      часов или #{mins} минут или #{sec} секунд"
  end

  def name
    name = []
    3.times { name << gets }
    "Hello #{name.join(' ')}!"
  end
end
