require 'minitest/autorun'
require_relative "DiscagemFrase"


describe DiscagemFrase do

    before do
        @telefone = DiscagemFrase.new()
    end


    it "deve ser 2 quando entrada for a,b ou c" do
      assert_equal(2,@telefone.disca('a'))
      assert_equal(2,@telefone.disca('b'))
      assert_equal(2,@telefone.disca('c'))
    end


end


