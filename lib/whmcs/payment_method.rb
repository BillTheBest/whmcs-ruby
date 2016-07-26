module WHMCS
  class PaymentMethod  < Base

    # Get  Payment Methods
    #
    # Parameters:
    #
    # See:
    #
    # http://docs.whmcs.com/API:Get_Payment_Methods
    def self.get_payment_methods(params = {})
      params.merge!(:action => 'getpaymentmethods')
      send_request(params)
    end
  end
end
