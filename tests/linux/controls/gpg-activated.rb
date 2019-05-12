control "gpgcheck" do
  impact 1.0
  title "gpgcheck"
  desc "gpgcheck"
  describe file('/etc/yum.conf') do
    its('content') { should match /gpgcheck=1/ }
  end
end
