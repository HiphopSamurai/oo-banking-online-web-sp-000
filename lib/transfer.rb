class Transfer

  attr_accessor :status, :amount, :sender, :receiver
  #attr_reader :status, :amount, :sender, :receiver

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
    if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."

    elsif @status == "complete"
      puts "Transaction was already excuted"
    else
      @sender.deposit( @amount * -1 )
      @receiver.deposit( @amount )
      @status = "complete"
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end
end
