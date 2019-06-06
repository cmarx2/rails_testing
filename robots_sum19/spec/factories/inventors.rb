FactoryBot.define do
  factory :inventor, class: Inventor do
    name { "Winston" }
  end
end

# create the robot and save
# FactoryBot.create(:robot)

# creates in memory
# FactoryBot.build()

# hash of all atr.
# FactoryBot.attributes_for()

# stubbed out factory 
# FactoryBot.build_stubbed()

# build_list(:robot, 100)
# create_list(:robot, 100, friendly: true)

# callbacks 
  # after(:build)
  # before(:build)
  # before(:create)
  # after(:create)