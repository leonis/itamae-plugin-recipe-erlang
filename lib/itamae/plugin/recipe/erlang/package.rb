# Install erlang by package.

erlang_version = \
  if !node[:erlang].nil? && !node[:erlang][:version].nil?
    node[:erlang][:version]
  else
    nil
  end

case node[:platform]
when 'debian', 'ubuntu'
  package 'erlang-nox' do
    version erlang_version unless erlang_version.nil?
  end
when 'redhat', 'fedora'
  # install epel-release repository
  package 'epel-release'

  package 'erlang' do
    version erlang_version unless erlang_version.nil?
  end
else
  fail "Sorry, your platform is not supported yet: '#{node[:platform]}'"
end
