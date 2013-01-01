default['development']['username'] = 'hadashi'

default['development']['rbenv']['rubies'] = ['1.9.3-p327']
default['development']['rbenv']['gems'] = [{:name => 'bundler'},
                                           {:name => 'pry'},
                                           {:name => 'pry-doc'},
                                           {:name => 'rcodetools'},
                                           {:name => 'rak'},
                                           {:name => 'devel-which'},
                                          ]
default['development']['rbenv']['global'] = '1.9.3-p327'
