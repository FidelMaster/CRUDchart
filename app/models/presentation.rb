class Presentation < ApplicationRecord
    #Estableciendo Relaciones
    has_many :products, dependent: :destroy
    after_initialize :init, unless: :persisted?
        
    def init
            set_id_number            
    end
       
    private
      
     def set_id_number
            id_number = Presentation.last  || 0
            next_mark_id = 1 + (id_number.class != Fixnum ? id_number.id : id_number)
            self.id = next_mark_id
     end
end
