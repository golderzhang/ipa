mkdir Payload
packname=${1%".app"}
cp -r $1 Payload/$1
zip -r Payload.ipa Payload 
mv Payload.ipa $packname.ipa
rm -rf Payload
echo $packname.ipa已生成
