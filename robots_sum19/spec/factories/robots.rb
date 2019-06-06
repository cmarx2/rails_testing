FactoryBot.define do
  factory :robot, class: Robot do
    name { "bob" }
    serial { SecureRandom.hex }
    friendly { true }
    color { "silver" }
    sound { "beep" }
    inventor
  end
end

# FactoryBot.create(:robot)
# FactoryBot.create(:robot, friendly: false, name: 'steve')
