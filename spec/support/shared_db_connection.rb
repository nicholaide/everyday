class ActiveRecord::Base
  #mattr_accessor: defines both class and instance accessors for class attributes.
  mattr_accessor :shared_connection
  @@shared_connection = nil
  
  def self.connection
    @@shared_connection || retrieve_connection
  end
end

ActiveRecord::Base.shared_connection = ActiveRecord::Base.connection