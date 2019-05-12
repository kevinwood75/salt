control "password" do
  impact 1.0
  title 'password'
  desc 'password'

  describe file("/etc/passwd") do
     it { should exist }
  end

end
