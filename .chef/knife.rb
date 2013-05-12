repo = File.expand_path('../..', __FILE__)

cookbook_path ["#{repo}/cookbooks", "#{repo}/site-cookbooks"]
role_path     "#{repo}/roles"
data_bag_path "#{repo}/data_bags"
#encrypted_data_bag_secret "data_bag_key"
