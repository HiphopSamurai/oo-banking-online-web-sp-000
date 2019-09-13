class Transfer

  attr_accessor :sender, :receiver, :transfer
  attr_reader :status

  def initialize(sender="", receiver="", transfer)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end
end
