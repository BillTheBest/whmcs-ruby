require File.dirname(__FILE__) + '/test_helper.rb'

require 'whmcs/base'

class ResponseTest < Test::Unit::TestCase
  context "WHMCS::Response" do

    should "turn has attributes in methods" do
      hash = { "name" => "Felipe", "password" => "password"}
      response = WHMCS::Response.new(hash)
      
      assert response.name     == "Felipe"
      assert response.password == "password"
    end
    
    should "be successful when result is success" do
      hash = { "result" => "success" }
      response = WHMCS::Response.new(hash)

      assert response.success?
    end
    
    should "not be successful when result isn't success" do
      hash = { "result" => "" }
      response = WHMCS::Response.new(hash)

      assert !response.success?
    end
    
    should "expose attributes hash" do
      hash = { "name" => "Felipe", "password" => "password"}
      response = WHMCS::Response.new(hash)
      
      assert response.attributes['name']     == "Felipe"
      assert response.attributes['password'] == "password"
    end
    
    should "have a method has_key?" do
      hash = { "name" => "Felipe", "password" => "password"}
      response = WHMCS::Response.new(hash)
      
      assert response.key?('name')
      assert response.key?('password')
      assert !response.key?('mame')
      assert !response.key?('massword')
    end
  end
end
