# Volt::Braintree example app

This is an example app on how to use the [Braintree component](https://github.com/cbetta/volt-braintree) component for [Volt](https://voltframework.com). 

## How to run?

1. Clone this repository
1. Run `bundle install`
1. Run `bundle exec volt server`
1. Go to `http://127.0.0.1:3000`
1. Fill in the credit card form with these details:
  * Card number: `4111 1111 1111 1111`
  * Expiry: `04/20`
  * CVV: `123`
1. Submit the form
1. After a few seconds it should show the `transaction_id`
