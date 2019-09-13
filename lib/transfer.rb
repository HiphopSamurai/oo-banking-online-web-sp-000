class Transfer

  attr_accessor :sender, :receiver, :transfer
  attr_reader :status

  def initialize(sender="", receiver="", transfer)
    @transfer = 50
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    #if transfer < 50
    #  @transfer = 50
    #else
    #  @transfer = transfer
    #end
  end
end
