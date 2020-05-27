class EmailDeliveryObserver

  # Log delivered emails
  def self.delivered_email(message)
    EmailDelivery.log(message)
  end

end
