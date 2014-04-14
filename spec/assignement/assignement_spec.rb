require 'spec_helper.rb'

describe 'assignement of a' do
  context 'float' do
    it { parse('test = 1.0').should be_an_assignement 1.0, FloatLiteral }
    it { parse('test = -2234.342').should be_an_assignement -2234.342, FloatLiteral }
  end
  context 'integer' do
    it { parse('test = 12134').should be_an_assignement(12134, IntegerLiteral) }
    it { parse('test = -2234').should be_an_assignement(-2234, IntegerLiteral) }
    it { parse('test = 1').should be_an_assignement(1, IntegerLiteral) }
    it { parse('test = -2').should be_an_assignement(-2, IntegerLiteral) }
  end
  context 'boolean' do
    it { parse('test = true').should be_an_assignement true, TrueLiteral }
    it { parse('test = false').should be_an_assignement false, FalseLiteral }
  end
  context 'nil' do
    it { parse('test = nil').should be_an_assignement 'nil', NilLiteral }
  end

  context 'string' do
    it { parse('test = "salut"').should be_an_assignement '"salut"', StringLiteral }
    it 'with escaped quotes' do
      parse('test = "salut \"numa\" ca va"').
          should be_an_assignement '"salut \"numa\" ca va"', StringLiteral
    end
  end
  context 'expression' do
    it { puts parse('test = 2+2').should be_an_assignement '2+2', AdditiveExpression }
  end
  context 'function call' do
    it { parse('test = function(args)').should be_an_assignement 'function(args)', FunctionCall }
    it { parse('test = function()').should be_an_assignement 'function()', FunctionCall }
  end
  context 'identifier' do
    it { parse('test = ident').should be_an_assignement 'ident', Identifier }
  end
end