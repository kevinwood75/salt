results = YAML.load_file("blacklisted_baseline.yaml")

results['baseline'].each do |entry|
   control entry['name'] do
     impact 0.7
     title "#{entry['name']}-#{entry['type']}-check"
     desc "Checks if blacklisted #{entry['name']} #{entry['type']} exits"
     tag category: 'security'
     tag technology: 'rhel'

     if entry['type'] == "pkg"
        describe package(entry['name']) do
          it { should_not be_installed }
        end 
     else
        describe command("find / -mount -name #{entry['name']} -exec false {} +") do
          its('exit_status') { should eq 0 }
        end
     end

   end
end 
