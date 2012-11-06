class BankStatement

require 'csv'

def initialize(filename, headers)
    @headers = headers
    @csv = parse_csv(filename)
end
    

def parse_csv(filename)
    arr = CSV.read(filename, 
                   col_sep: ';', 
                   encoding: "iso8859-1:utf-8", 
                   headers: @headers,
                   write_headers: true)
    arr
end

def total_expenses(csv_arr)
    expenses = 0.0
    csv_arr.each do |item|
        expenses += csv_arr[-2] unless csv_arr[-2] > 0
    end
    expenses
end

def balance(csv_arr)
    balance = 0.0
    csv_arr.each do |item| 
        balance += item[-2].gsub(".", "").to_f
    end
    balance
end

end
