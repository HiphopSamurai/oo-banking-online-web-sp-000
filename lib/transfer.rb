class Transfer

  #attr_accessor :sender, :receiver, :transfer
  attr_reader :status, :amount, :sender, :receiver, :transfer

  def initialize(sender="", receiver="", transfer)
    #@transfer = transfer
    @amount = transfer
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      return true
    else
      return false
    end
  end

  def execute_transaction
    ####
  end

  def reverse_transfer
    ####
  end
end
