require 'pry'

class BankAccount

    attr_accessor :status, :balance
    attr_reader :name

    def initialize(name)
        # binding.pry
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        # binding.pry
        @balance += amount
    end

    def display_balance
        # binding.pry
        "Your balance is $#{self.balance}."
    end

    def valid?
        @status == "open" && @balance > 0
        # is valid with an open status and a balance greater than 0 (FAILED - 1)
    end

    def close_account
        self.status = "closed"
    end
end
