class ReportsController <ApplicationController


    #Funcion creada para recibir parametros de manera global
    def get_params
       
        @scenerario=params[:scenario].to_i 
        #se usa como bandera para saber si el reporte necesesitara un excel
        @tittle=params[:title]
       
    end
   
 
  
  
       
   
       def generate_pdf
   
           case  @scenerario
               when 1
                     @data=Product.products_provider
                   
               when 2
                      @data=Product.products_trademark
              
           
               else
           
           end
          
   
           pdf = render_to_string pdf: "reporte.pdf", template: "reports/send_report", 
                           encoding: "UTF-8",
                                  orientation: 'Landscape',
                                  footer: { right: 'Pagina [page] de [topage]' }
   
           # then save to a file
           save_path = Rails.root.join('public', "reporte#{@time_stamp}.pdf")
         
             File.open(save_path, 'wb') do |file|
                file << pdf
              end
              
             
               
               send_file(save_path)
               
             
       
       end
   
       def send_report
         get_params
         generate_pdf
        end
end