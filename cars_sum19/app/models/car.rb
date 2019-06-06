class Car < ApplicationRecord
  # validates_presence_of :make
  # validates_uniqueness_of :make 

  validates :make, uniqueness: true, presence: true 

  def self.by_model
    # return all the cars and sort asc by model 
    # Car.order(:model)
    order(:model)
  end

  def self.by_make
    # return all the cars and sort asc by make
    order(:make)
  end

  def self.by_price(direction = :asc)
    # return all the cars and sort asc by price
    # return dec if params passed
    # Car.order(price: :asc)
    # Car.order(price: :desc)

    order(price: direction)
  end

  def paint(incoming_color)
    # change the color of the car
    self.update(color: incoming_color)
  end

  def info
    # returns all the data of the car in hash beside id created_at updated_at
    self.attributes.except('id', 'created_at', 'updated_at')
  end

  def honk
    # returns and string of the horn
    'BEEEP!'
  end

end
