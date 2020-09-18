module Csv
    
using CSV

function read_sheet(filename)
    #reading csv sheet in entirety
     try
         return CSV.read(filename)
     catch
         println("Cannot retrieve data.")
     end 
     
 end

end #module