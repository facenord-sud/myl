RSpec::Matchers.define :be_a_flow_control do |condition_type|
  match do |tree|
     tree.should be_a_statement
     if_element =  tree.elements.first.get_element(0, child: 0)
     if_element.should be_a condition_type
     if_element.elements.first.should be_a Expression
     if_element.elements[1].should be_a Block
  end
end