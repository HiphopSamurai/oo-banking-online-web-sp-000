class Transfer

  attr_accessor :sender, :receiver, :transfer

  def initialize(sender="", receiver="", transfer)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
  end
end
