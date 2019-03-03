class Transfer
  attr_accessor :sender, :receiver, :amount
  # your code here
  def initialize(sender, receiver, amt)
    @sender = sender
    @receiver = receiver
    @amount = amt
  end
end
