# spec/example_spec.rb
require 'spec_helper'
require 'json'

describe server(:runner) do

    describe http('http://runner/healthcheck') do
        it "Survey runner health check test" do
            expect(response.headers['content-type']).to eq("application/json")
        end
        it "Rabbitmq connection availability test" do
            expect(response_body["status"]).to include('success')
        end
    end

    def response_body
        JSON.parse(response.body)
    end

end

