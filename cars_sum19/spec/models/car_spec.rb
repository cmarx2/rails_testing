require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'car columns' do
    # it 'has a make' do
    #   make = 'Toyota'
    #   car = Car.create(make: make)
    #   expect(car.make).to eq(make)
    # end

    # it 'has a year' do
    #   year = 1990
    #   car = Car.create(year: year)
    #   expect(car.year).to eq(year)
    # end

    it { should respond_to :make }
    it { should respond_to :year }
    it { should respond_to :model }
    it { should respond_to :color }
    it { should respond_to :price }
    it { should respond_to :mileage }

  end

  describe 'validations' do
    it { should validate_presence_of(:make) }
    it { should validate_uniqueness_of(:make) }
  end

  describe 'class methods' do
    before(:each) do
      @car1 = Car.create(make: 'Chevy', model: 'Mal', price: 0)
      @car2 = Car.create(make: 'Subaru', model: 'Crosstrack', price: 30000)
      @car3 = Car.create(make: 'Mazda', model: 'Three', price: 10 )
    end

    it 'should sort model asc' do
      expect(Car.by_model).to eq([@car2, @car1, @car3])
    end

    it 'should sort the make asc' do
      expect(Car.by_make).to eq([@car1, @car3, @car2])
    end

    it 'should sort by price asc' do
      expect(Car.by_price).to eq([@car1, @car3, @car2])
    end

    it 'should sort by price desc' do
      expect(Car.by_price(:desc)).to eq([@car2, @car3, @car1])
    end
  end

  describe 'instance methods' do 
    before(:each) do
      @attr = {
        make: 'Honda' ,
        model: 'Pilot',
        color: 'Tan',
        mileage: 240000,
        year: 2018,
        price: 26000
      }

      @car = Car.create(@attr)
    end

    it 'paints a car' do 
      @car.paint('Pink')
      expect(@car.color).to eq('Pink')
    end

    it 'returns car info in a hash' do
      # make: ''
      # :make => ''
      expect(@car.info).to eq(@attr.with_indifferent_access)
    end

    it 'honks the horn' do
      expect(@car.honk).to eq('BEEEP!')
    end
  end
end
