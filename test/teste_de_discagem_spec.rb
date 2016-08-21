require 'minitest/autorun'
require_relative "../src/DiscagemFrase"


describe DiscagemFrase do

    before do
        @telefone = DiscagemFrase.new()
    end

    it "1-HOME-SWEET-HOME deve discar 1-4663-79338-4663" do
      assert_equal('1-4663-79338-4663',@telefone.disca('1-HOME-SWEET-HOME'))
    end

    it "MY-MISERABLE-JOB deve discar 69-647372253-562" do
      assert_equal('69-647372253-562',@telefone.disca('MY-MISERABLE-JOB'))
    end

    it "The quick brown fox jumps over the lazy dog deve discar 84378425276963695867768378435299364" do
       assert_equal('84378425276963695867768378435299364',@telefone.disca('the quick brown fox jumps over the lazy dog'))
    end

    it "Deve ser lançada uma exception quando a entrada for invalida" do
        assert_raises( ArgumentError,"fiiiii isso nao existe no teclado do telefone!!") { @telefone.disca('}}') }
    end

    it "Caracteres especiais # e * devem passar" do
        assert_equal('69-#47372253-56*',@telefone.disca('MY-#ISERABLE-JO*'))
    end


end


