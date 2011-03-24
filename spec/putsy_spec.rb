require File.join(File.dirname(__FILE__), '..', 'lib', 'putsy')

describe "putsy" do

  it "should be defined on Kernel" do
    Kernel.method_defined?(:putsy).should be true
  end

  it "should appear in yellow" do
    output { putsy "Hello!" }.should == "\e[33m\e[1mHello!\e[0m\n"
  end

end

def output
  input, output = IO.pipe
  $stdout = output
  yield
  $stdout = STDOUT
  input.readline
end

