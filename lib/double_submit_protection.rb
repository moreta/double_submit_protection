module Hervalicious
  module DoubleSubmitProtection

    TOKEN_NAME = "submit_token"

    module View
      def double_submit_token
        flash[TOKEN_NAME] = Digest::MD5.hexdigest(rand.to_s)
        hidden_field_tag(TOKEN_NAME, flash[TOKEN_NAME])
      end
    end

    module Controller
      def double_submit?
        token = flash[TOKEN_NAME]
        token.nil? || ( (request.post? || request.put?) && (token != params[TOKEN_NAME]) )
      end
    end
  end
end

