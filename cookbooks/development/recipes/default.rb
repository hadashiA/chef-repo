# packages
include_recipe "homebrew"

%w(wget global w3m cmigemo git openssl readline).each do |p|
  package p
end

package "emacs" do 
  action :install
  options "--cocoa --HEAD"
end

include_recipe "zsh"

# rbenv
include_recipe "ruby_build"
include_recipe "rbenv"

install_rbenv_pkg_prereqs

username = node['development']['username']
home_dir = File.join('/Users', username)
install_or_upgrade_rbenv(:rbenv_prefix => File.join(home_dir, '.rbenv'),
                         :home_dir => home_dir,
                         :git_url => "git://github.com/sstephenson/rbenv.git",
                         :git_ref => 'master',
                         :upgrade_strategy => 'sync',
                         :user => username,
                         :group => nil)

node['development']['rbenv']['rubies'].each do |rubie|
  rbenv_ruby "#{rubie} (#{username})" do 
    definition rubie
    user username
  end

  Array(node['development']['rbenv']['gems']).each do |gem|
    rbenv_gem "#{gem['name']} (#{username})" do 
      package_name gem['name']
      user username
      rbenv_version rubie

      %w(version action options source).each do |attr|
        send(attr, gem[attr]) if gem[attr]
      end
    end
  end
end

rbenv_global "#{node['development']['rbenv']['global']} (#{username})" do 
  rbenv_version node['development']['rbenv']['global']
  user username

  only_if { node['development']['rbenv']['global'] }
end

