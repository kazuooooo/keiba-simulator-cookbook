require 'pry'
# secrets.shを作成
template '/etc/profile.d/secrets.sh' do
  source 'secrets.sh.erb'
  action :create
end

# data_bagの値を取得(.secret配下にある鍵でdata_bags/foo/bar.jsonの内容を復号)
data_bag = Chef::EncryptedDataBagItem.load('foo','bar')
# bar.jsonのnaisyo_valueを取得
# naisyo_value = data_bag['naisyo_value']
naisyo_value = "86851fa1088054070f7bc881c09a1224db94c3240a28821a2ad14e706861191cc1eed3565688c3518a1c53857a680ee440981139c5c6d8e4affd4d138926d746"
# /etc/profile.d/secrets.shを作成
template '/etc/profile.d/secrets.sh' do
  variables ({
              :naisyo => naisyo_value
            })
end

# secrets.shを読み込み
# export SECRET='<%= @naisyo %>'が実行される
bash 'load secrets.sh' do
  code 'source /etc/profile.d/secrets.sh'
  action :run
end
