require 'spec_helper.rb'

describe 'simple expressions' do
  context 'addition' do
    it { parse('2+2').should be_a_full_expression(AdditiveExpression, AdditionOperator) }
    it { parse('2.0+ 3.9').should be_a_full_expression(AdditiveExpression, AdditionOperator) }
    it { parse('"saalut"+ "ça va?"').should be_a_full_expression(AdditiveExpression, AdditionOperator) }
    it { parse('q+ w').should be_a_full_expression(AdditiveExpression, AdditionOperator) }
  end
  context 'subtraction' do
    it { parse('2-2').should be_a_full_expression(AdditiveExpression, SubtractionOperator) }
    it { parse('2.0 - 3.9').should be_a_full_expression(AdditiveExpression, SubtractionOperator) }
    it { parse('"saalut"- "ça va?"').should be_a_full_expression(AdditiveExpression, SubtractionOperator) }
    it { parse('q -w').should be_a_full_expression(AdditiveExpression, SubtractionOperator) }
  end
  context 'multiplication' do
    it { parse('2*2').should be_a_full_expression(MultitiveExpression, MultiplicationOperator) }
    it { parse('2.0* 3.9').should be_a_full_expression(MultitiveExpression, MultiplicationOperator) }
    it { parse('"abc"* 3').should be_a_full_expression(MultitiveExpression, MultiplicationOperator) }
    it { parse('q* w').should be_a_full_expression(MultitiveExpression, MultiplicationOperator) }
  end
  context 'division' do
    it { parse('2/2').should be_a_full_expression(MultitiveExpression, DivisionOperator) }
    it { parse('2.0/ 3.9').should be_a_full_expression(MultitiveExpression, DivisionOperator) }
    it { parse('"saalut"/ "ça va?"').should be_a_full_expression(MultitiveExpression, DivisionOperator) }
    it { parse('q/ w').should be_a_full_expression(MultitiveExpression, DivisionOperator) }
  end
end