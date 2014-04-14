require 'spec_helper.rb'

describe 'compound expressions' do
  context 'has function call' do
    subject(:result) { parse('blup(2)+ 1') }
    it { should be_a_full_expression(AdditiveExpression, AdditionOperator) }
    it { result.get_element(2, child: 0).should be_a FunctionCall }
    it { result.get_element(3).should be_a IntegerLiteral }
  end

  context 'has sub expression' do
    subject(:result) { parse('2*4+2/8') }
    let(:expr) { result.get_element(1) }
    it { should be_a_full_expression AdditiveExpression, AdditionOperator }
    it { expr.get_element(0, child: 0).should be_an_expression(MultitiveExpression, MultiplicationOperator) }
    it { expr.get_element(1).should be_an_expression(MultitiveExpression, DivisionOperator) }
  end

  context 'has parenthesis' do
    subject(:result) { parse('2/(8+1)') }
    let(:expr) { result.get_element(1) }
    it { should be_a_full_expression MultitiveExpression, DivisionOperator }
    it { result.get_element(5).should be_an_expression AdditiveExpression, AdditionOperator }
    it { result.get_element(4).should be_a Expression }
  end
end