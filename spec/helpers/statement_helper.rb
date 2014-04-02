RSpec::Matchers.define :be_a_statement do
  match do |tree|
    tree.should be_a Block
    tree.get_element(0).should be_a Statement
  end
end