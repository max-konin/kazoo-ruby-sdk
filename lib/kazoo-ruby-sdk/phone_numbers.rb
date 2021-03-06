module KazooRubySdk
  class PhoneNumbers < Base
    class << self
      # Creates phone number in kazoo for specific account
      # @param phone_number [String] the phone number
      # @param data [Hash] number's data. see https://github.com/2600hz/kazoo/blob/master/applications/crossbar/doc/phone_numbers.md#schema
      # @return [Hashie::Mash] response body
      def create(phone_number, data = {})
        pipe.put do |request|
          request.url "accounts/#{account_id}/phone_numbers/#{phone_number}"
          request.headers['X-Auth-Token'] = auth_token
          request.body = { data: data }
        end.body
      end

      # Creates list of phone numbers in kazoo for specific account
      # @param phone_number [Array] list of phone numbers
      # @return [Hashie::Mash] response body
      def butch_create(phone_numbers)
        pipe.put do |request|
          request.url "accounts/#{account_id}/phone_numbers/collection"
          request.headers['X-Auth-Token'] = auth_token
          request.body = { data: {numbers: phone_numbers} }
        end.body
      end


      # Delete a specific phone number
      # @param phone_number [Array] the phone number
      # @return [Hashie::Mash] response body
      def destroy(phone_numbers)
        pipe.delete do |request|
          request.url "accounts/#{account_id}/phone_numbers/#{phone_number}"
          request.headers['X-Auth-Token'] = auth_token
        end.body
      end
    end
  end
end
