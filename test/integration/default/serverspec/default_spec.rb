require 'spec_helper'

kibana_log_dir  = '/var/log/kibana'
kibana_pid_dir  = '/var/run/kibana'
kibana_home_dir = '/usr/share/kibana'
kibana_conf_dir = '/etc/kibana'

describe user('kibana') do
  it { should exist }
end

describe package('kibana') do
  it { should be_installed }
end

%W(
  #{kibana_conf_dir}
  #{kibana_home_dir}/bin
).each do |d|
  describe file(d) do
    it { should be_directory }
    it { should be_owned_by 'root' }
  end
end

%W(
  #{kibana_log_dir}
  #{kibana_pid_dir}
).each do |d|
  describe file(d) do
    it { should be_directory }
    it { should be_owned_by 'kibana' }
  end
end

%W(
  /etc/default/kibana
  #{kibana_conf_dir}/kibana.yml
).each do |f|
  describe file(f) do
    it { should be_file }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
  end
end

describe file('/etc/init.d/kibana') do
  it { should be_file }
  it { should be_mode 755 }
  it { should be_owned_by 'root' }
end

describe service('kibana') do
  it { should be_running }
end

describe file("#{kibana_log_dir}/kibana.stdout") do
  its(:content) { should match %r(Status changed from .+ to green - Ready) }
end
