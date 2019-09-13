class Transfer

  attr_accessor :sender, :receiver, :transfer
  attr_reader :status

  def initialize(sender="", receiver="", transfer)
    if transfer < 50
      @transfer = 50
    else
      @transfer = transfer
    end
    #@transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end
end
