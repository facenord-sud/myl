RSpec::Matchers.define :be_an_assignement do |value, type|
  match do |tree|
    tree.should be_a Block
    tree.get_element(0).should be_a Statement
    tree.get_element(1).should be_a Assignment
    tree.get_element(1, child: 0).should be_a Identifier
    tree.get_element(1, child: 1).should be_a AssignmentOperator
    tree.get_element(1, child: 2).should be_a Expression
    if tree.get_element(1, child: 2).get_element(0).is_a? FunctionCall or type.nil?
      true
    else
      tree.get_element(1, child: 2).get_element(0).should be_a type
      tree.get_element(1, child: 2).get_element(0).text_value.should eq value.to_s
    end
  end
end