require 'pry'

class Transfer

  attr_reader :sender, :receiver
  attr_accessor :status, :balance, :amount

  def initialize (sender, receiver, amount)
    # binding.pry
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    # binding.pry
    sender.valid? && receiver.valid?
    # self.sender.status == "open" && self.receiver.status == "open"
  end

  def execute_transaction
    # binding.pry
    if @status == "complete"
      "Transaction already completed"
    elsif valid? && @amount < @sender.balance
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."





    # if @amount > @sender.balance
    #   @status = "rejected"
    #   "Transaction rejected. Please check your account balance."
    # elsif
    #   @status = "complete"
    #   "Transaction already completed"
    # else
    #   @sender.balance -= @amount
    #   @receiver.balance += @amount
    #   @status = "complete"

    end
    # an execute a successful transaction between two accounts (FAILED - 2)
    # each transfer can only happen once (FAILED - 3)
    # rejects a transfer if the sender does not have enough funds (does not have a valid account) (FAILED - 4)
  end
 
  def reverse_transfer
    if @status == "complete"
      sender.balance += @amount
      receiver.balance -= @amount
      @status = "reversed"
    end
    # can reverse a transfer between two accounts (FAILED - 5)
    # it can only reverse executed transfers (FAILED - 6)
  end
end
