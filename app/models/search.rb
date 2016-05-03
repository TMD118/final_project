class Search < ActiveRecord::Base
    
    def search_doctors
       
       doc1=Doctor.all
       doc2=Doctor.all
       
       doc3=Doctor.all
       doc4=Doctor.all
       
       doc5=Doctor.all
       doc6=Doctor.all
       
       doc7=Doctor.all
       doc8=Doctor.all
       #books=books.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?

    #within both bounds
       doc1=doc1.where(["leavetime <= ?",max_time]) if min_time.present?
       doc2=doc1.where(["arrivaltime >= ?",min_time]) if max_time.present?
    
    #leave out of bounds but arrive before bounds
       doc3=doc3.where(["leavetime >= ?",max_time]) if min_time.present?
       doc4=doc3.where(["arrivaltime <= ?",max_time]) if min_time.present?
       
    #leave in bounds but arrive before bounds
       doc5=doc5.where(["leavetime >= ?",min_time]) if min_time.present?
       doc6=doc5.where(["arrivaltime <= ?",min_time]) if min_time.present?
       
    #both out of bounds
        doc7=doc7.where(["leavetime >= ?",max_time]) if min_time.present?
        doc8=doc7.where(["arrivaltime <= ?",min_time]) if min_time.present?
       
       
       return (doc2+doc4+doc6+doc8)
        
    end
    
end
