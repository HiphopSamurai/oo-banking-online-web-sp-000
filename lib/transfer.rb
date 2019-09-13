class Transfer

  attr_accessor :sender, :receiver, :transfer

  def initialize(transfer, sender="", receiver="")
    @transfer = transfer
    @sender = sender
    @receiver = receiver
  end
end
