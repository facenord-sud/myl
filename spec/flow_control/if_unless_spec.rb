require 'spec_helper.rb'

describe 'flow control' do
  context 'if' do
    subject(:result) { parse('if 1 == 1 test = 1 test2 = 2 } test3=3') }
    it { should be_a_flow_control If }
    it { result.get_element(0, child: 0).get_element(0).text_value.should eq('test3=3') }
  end

  context 'unless' do
    subject(:result) { parse("unless(1 == 1) {\ntest = 1\ntest2 = 2\n}\ntest=3\n") }
    it { should be_a_flow_control Unless }
    it { result.get_element(0, child: 0).get_element(0).text_value.should eq('test=3') }
  end
end