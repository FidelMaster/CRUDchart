class Product < ApplicationRecord
    after_initialize :init, unless: :persisted?
        
        def init
                set_id_number            
        end

        def self.products_provider
            sql="select count(product.id) as total,  pr.description as nombre 
            from products as product  
            inner join providers as pr on(product.id_provider=pr.id) 
            group by pr.description "
            data= ActiveRecord::Base.connection.execute(sql).values  
        end

        def self.products_trademark
            sql="select count(product.id) as total,  pr.description as nombre 
            from products as product  
            inner join tradmarks as pr on(product.id_trademark=pr.id) 
            group by pr.description "
            data= ActiveRecord::Base.connection.execute(sql).values  
        end
           
        private
          
         def set_id_number
                id_number = Product.last  || 0
                next_mark_id = 1 + (id_number.class != Fixnum ? id_number.id : id_number)
                self.id = next_mark_id
         end
end
