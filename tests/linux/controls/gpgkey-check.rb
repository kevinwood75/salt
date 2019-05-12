control "cis-1-2-1" do
  impact 1.0
  title "GPG"
  desc "GPG"
  describe command('rpm -q --queryformat "%{SUMMARY}\n" gpg-pubkey') do
   its('stdout') {should match /CentOS [1-9] Official Signing Key/ }
  end
end
