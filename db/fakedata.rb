
class Fakedata
  
  @name = [
    "John",
    "Adam",
    "Hugo",
    "Ann",
    "Yvonne",
    "Ashe",
    "Bruce",
    "Tony",
  ]

  def self.name_sample
    return @name.sample
  end

  @age = [
    18, 20, 25, 30, 45, 50
  ]

  def self.age_sample
    return @age.sample
  end

end