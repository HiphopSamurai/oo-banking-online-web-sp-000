class Transfer

  attr_accessor :sender, :receiver, :transfer
  attr_reader :status, :amount

  def initialize(sender="", receiver="", transfer)
    @transfer = transfer
    @amount += 50
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end

  def valid?
    ####
  end

  def execute_transaction
    ####
  end

  def reverse_transfer
    ####
  end
end
