class ClientTokenTask < Volt::Task
  def generate *options
    Braintree::ClientToken.generate(symbolize_keys!(*options))
  end

  private

  def symbolize_keys! hash={}
    transform_keys!(hash){ |key| key.to_sym rescue key }
  end

  def transform_keys!(hash)
    hash.keys.each do |key|
      hash[yield(key)] = hash.delete(key)
    end
    hash
  end
end
