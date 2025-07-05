set PRODUCT=viewer

call git submodule update --init --recursive
call git submodule foreach git pull origin master
xcopy java common\content\%PRODUCT%\java /s /e /Y /i
xcopy net common\content\%PRODUCT%\net /s /e /Y /i
xcopy nodejs-java common\content\%PRODUCT%\nodejs-java /s /e /Y /i
xcopy python-net common\content\%PRODUCT%\python-net /s /e /Y /i
xcopy _index.md common\content\%PRODUCT% 
cd common
call hugo server --config config-geekdoc.toml,ignore-total-config.toml,show-feedback-config.toml