maintainer       "hadashikick"
maintainer_email "dev@hadashikick.jp"
license          "All rights reserved"
description      "Installs/Configures development"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"
supports         "mac_os_x"
%w(homebrew ruby_build rbenv zsh).each do |d|
  depends d
end
