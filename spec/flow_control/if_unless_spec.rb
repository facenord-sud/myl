require 'spec_helper.rb'

describe 'if unless flow control' do
  it { parse('if(1 == 1) test = 1; test2 = 2; end').should be_a_flow_control If }
  it { parse("if(1 == 1)\ntest = 1\ntest2 = 2\nend").should be_a_flow_control If }
  it { parse('unless(1 == 1) test = 1; test2 = 2; end').should be_a_flow_control Unless }
  it { parse("unless(1 == 1)\ntest = 1\ntest2 = 2\nend").should be_a_flow_control Unless }
end