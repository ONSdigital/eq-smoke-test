# spec/example_spec.rb
require 'spec_helper'

describe server(:runner) do

    describe http('http://runner/healthcheck') do
        it "Survey runner health check test" do
            expect(response.headers['content-type']).to eq("application/json")
        end
        it "Rabbitmq connection availability test" do
             expect(response.body).to include('rabbitmq_available')
        end
    end

    describe http('http://rabbit/healthcheck/send_test') do
        it "Rabbitmq health check test" do
            expect(response.headers['content-type']).to eq("text/html")
        end
        it "Rabbitmq functionality test" do
             expect(response.body).to include('OK')
        end
    end

end


