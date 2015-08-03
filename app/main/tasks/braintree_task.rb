class BraintreeTask < Volt::Task
  def sale nonce
    return if nonce.nil?
    
    result = Braintree::Transaction.sale({
      amount: 10,
      payment_method_nonce: nonce
    })

    if result.success?
      return result.transaction.id
    else
      return "Could not process payment"
    end
  end
end
