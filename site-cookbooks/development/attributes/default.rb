node.default['rbenv']['user_installs'] = [
  { 'user'    => 'hadashi',
    'rubies'  => ['2.0.0-p0'],
    'global'  => '2.0.0-p0',
    'gems'    => {
      '2.0.0-p0'    => [
        { 'name'    => 'bundler'},
        { 'name'    => 'rake'},
        { 'name'    => 'rcodetools'},
        { 'name'    => 'pry'},
        { 'name'    => 'pry-doc'},
        { 'name'    => 'devel-which'},
        { 'name'    => 'rak'}
      ]
    }
  }
]
