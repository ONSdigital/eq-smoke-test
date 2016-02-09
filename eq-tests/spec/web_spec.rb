# spec/example_spec.rb
require 'spec_helper'

describe server(:runner) do
    describe http('http://app/healthcheck') do
        it "Healthcheck page exists" do
            expect(response.headers['content-type']).to eq("application/json")
        end
        it "rabbitmq_avaiable" do
             expect(response.body).to include('rabbitmq_available')
        end
    end
end


