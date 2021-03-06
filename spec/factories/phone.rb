FactoryGirl.define do
  
  factory :phone do
    association :contact #create contact if this wasn't specified
    phone { Faker::PhoneNumber.phone_number }
    
    factory :home_phone do
      phone_type 'home'
    end
    
    factory :work_phone do 
      phone_type 'work'
    end
    
    factory :mobile_phone do
      phone_type 'mobile'
    end
    
  end
  
end