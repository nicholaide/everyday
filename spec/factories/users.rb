FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password 'secret'
    password_confirmation 'secret'
    
    factory :admin do
      admin true
    end
    
    factory :user_with_avatar do
      avatar { File.new("#{Rails.root}/spec/factories/avatar.png")}
    end
    
  end #user
end