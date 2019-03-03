require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  # your code here
  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    @amount = amt
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if self.valid? && @status == "pending" && @sender.balance > @amount
      @sender.balance -= @amount
      @receiver.deposit(@amount)
      @status = "complete"
    else
      @status = "failed"
      "Transaction rejected. Please check your account balance."
    end
  end
end
