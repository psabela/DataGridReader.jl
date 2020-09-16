module Excel
    
using DataFrames
using XLSX

function read_sheet(filename, sheetname)
   #reading excel sheet in entirety
    try
        _workbook = XLSX.openxlsx(filename)
        _sheet    = _workbook[sheetname]
        _array    = _sheet[:]   
        return DataFrame(_array) 
    catch
        println("Cannot retrieve data.")
    end 
    
end

end #module