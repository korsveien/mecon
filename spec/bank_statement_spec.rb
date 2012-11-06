require 'spec_helper'

describe BankStatement do
    before :each do
        @bank_statement = BankStatement.new("data.csv", 
            ["Dato", "Rentedato", "Tekst", "Transaksjon", "Saldo"])
    end

    describe "#new" do
        it "Takes on parameter and returns a BankStatement object" do
            @bank_statement.should be_an_instance_of BankStatement
        end
    end               
end
