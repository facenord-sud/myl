RSpec::Matchers.define :be_a_flow_control do |condition_type|
  match do |tree|
     tree.should be_a_statement 
     tree.get_element(1).should be_a condition_type
     tree.get_element(1, child: 0).should be_a Expression 
     tree.get_element(1, child: 1).should be_a Block 
     tree.get_element(2).elements.last.elements.first.should be_a EndControl 
  end
end