require 'spec_helper.rb'

describe 'flow control' do
  context 'if' do
    subject(:result) { parse("if(1 == 1){\ntest = 1\ntest2 = 2\n}\ntest3=3\n") }
    it { should be_a_flow_control If }
    it { result.get_element(0).should be_a Statement }
  end

  context 'unless' do
    subject(:result) { parse("unless(1 == 1) {\ntest = 1\ntest2 = 2\n}\test=3\n") }
    it { should be_a_flow_control Unless }
    it { result.get_element(0).should be_a Statement }
  end
end