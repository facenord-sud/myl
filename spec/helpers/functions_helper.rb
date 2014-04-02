RSpec::Matchers.define :be_a_function_call do |identifier|
  match do |tree|
    tree.should be_a_statement
    tree.get_element(1).should be_a Expression
    tree.get_element(2).should be_a FunctionCall
    tree.get_element(2, child: 0).should be_a Identifier
    tree.get_element(2, child: 0).text_value.should eq(identifier)
  end
end