export PRODUCT=viewer

git submodule update --init --recursive
git submodule foreach git pull origin master
mkdir -p common/content/$PRODUCT/java && cp -r java common/content/$PRODUCT/
mkdir -p common/content/$PRODUCT/net && cp -r net common/content/$PRODUCT/
mkdir -p common/content/$PRODUCT/nodejs-java && cp -r nodejs-java common/content/$PRODUCT/
mkdir -p common/content/$PRODUCT/python-net && cp -r python-net common/content/$PRODUCT/
cp -r _index.md common/content/$PRODUCT
cd common
hugo server --config config-geekdoc.toml,ignore-total-config.toml,show-feedback-config.toml