require 'spec_helper.rb'

describe 'function call' do
  context 'without arguments' do
    subject(:result) { parse('test()') }
    it{ should be_a_function_call 'test' }
  end
  context 'with one argument' do
    subject(:result) { parse('test(1)') }
    it{ should be_a_function_call 'test' }
    it{ result.get_element(4).should be_a IntegerLiteral }
  end

  context 'with multiple arguments' do
    subject(:result) { parse('test(1, "abc")') }
    it{ should be_a_function_call 'test' }
    it{ result.get_element(2, child: 1).elements.first.should be_a IntegerLiteral }
    it{ result.get_element(4).should be_a StringLiteral }
  end

  context 'with argument as function call' do
    subject(:result) { parse('test(1, test2())') }
    it{ should be_a_function_call 'test' }
    it{ result.get_element(2, child: 1).elements.first.should be_a IntegerLiteral }
    it{ result.get_element(4).should be_a FunctionCall }
    it{ result.get_element(5).text_value.should eq('test2') }
  end
  context 'after an expression' do
    subject(:result) { parse('2.print()') }
    it { puts result.get_element(2).should be_a FunctionCall }
  end
end