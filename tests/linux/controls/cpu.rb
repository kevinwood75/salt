control "cpu" do
  impact 1.0
  title 'cpu'
  desc "cpu"

  describe file('/proc/cpuinfo') do
    its('size') { should be <= 120 }
  end
end
