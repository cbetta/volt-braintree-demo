module Braintree
  class MainController < Volt::ModelController
    def index
    end

    def index_ready
      ClientTokenTask.generate(version: 2).then do |client_token|
        %x{
          braintree.setup(client_token, "dropin", {
            container: "volt-braintree-form"
          });
        }
      end
    end
    private

    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end
  end
end
