require 'spec_helper.rb'

describe 'comparaison expressions' do
  context 'equality' do
    it {parse('1 == 1').should be_a_full_expression ComparativeExpression, EqualityOperator}
    it {parse('2.3 == 2.3').should be_a_full_expression ComparativeExpression, EqualityOperator}
    it {parse('"a" == "a"').should be_a_full_expression ComparativeExpression, EqualityOperator}
    it {parse('test == test2').should be_a_full_expression ComparativeExpression, EqualityOperator}
  end
  context 'inequality' do
    it {parse('1 != 2').should be_a_full_expression ComparativeExpression, InEqualityOperator}
    it {parse('2.0 != 2.3').should be_a_full_expression ComparativeExpression, InEqualityOperator}
    it {parse('"b" != "a"').should be_a_full_expression ComparativeExpression, InEqualityOperator}
    it {parse('test != test2').should be_a_full_expression ComparativeExpression, InEqualityOperator}
  end
  context 'greater than' do
    it {parse('2 > 1').should be_a_full_expression ComparativeExpression, GreaterThanOperator}
    it {parse('2.4 > 2.3').should be_a_full_expression ComparativeExpression, GreaterThanOperator}
    it {parse('"b" > "a"').should be_a_full_expression ComparativeExpression, GreaterThanOperator}
    it {parse('test > test2').should be_a_full_expression ComparativeExpression, GreaterThanOperator}
  end
  context 'less than' do
    it {parse('1 < 2').should be_a_full_expression ComparativeExpression, LessThanOperator}
    it {parse('2.0 < 2.3').should be_a_full_expression ComparativeExpression, LessThanOperator}
    it {parse('"a" < "b"').should be_a_full_expression ComparativeExpression, LessThanOperator}
    it {parse('test < test2').should be_a_full_expression ComparativeExpression, LessThanOperator}
  end
end