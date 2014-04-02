RSpec::Matchers.define :be_an_expression do |expression_type, operator|
  match do |tree|
    tree.should be_a expression_type
    tree.elements.size.should eq 3
    tree.elements[1].should be_a operator
  end
end

RSpec::Matchers.define :be_a_full_expression do |expression_type, operator|
  match do |tree|
    tree.should be_a_statement
    tree.get_element(1).should be_a Expression
    tree.get_element(2).should be_an_expression expression_type, operator
  end
end