class Doctor < ActiveRecord::Base
    has_many :patients
    E_regex=/\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
    validates   :name,      :presence   =>  true
    validates   :arrivaltime,      :presence   =>  true
    validates   :leavetime,      :presence   =>  true
    validates   :email,  uniqueness: { case_sensitive: true }
    validates   :email,          :format     =>  {:with => E_regex}
    validate :validate_timings
    validate :timing_range
    validates :officeno,    :presence => true,
                            :numericality => true,
                            :length => { :minimum => 2, :maximum => 15 }
    
    def self.search(search)
        if search
            where(["name LIKE ?","%#{search}%"])
        else
           all 
        end
    end
    
    def validate_timings
        if (self.arrivaltime >= self.leavetime)
          errors.add(:arrivaltime,         ":arrivaltime must be before leavetime")
          errors.add(:leavetime,           ":arrivaltime must be before leavetime")
        end
    end
    
    def timing_range
        if (self.arrivaltime<0||self.leavetime>23)
          errors.add(:arrivaltime,         ":use 24-hour time system")
          errors.add(:leavetime,           ":use 24-hour time system")
        end
    end
    
end
