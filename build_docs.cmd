set PRODUCT=viewer

call git submodule update --init --recursive
call git submodule foreach git pull origin master

REM Use robocopy /MIR to mirror the source into common/content — unlike xcopy,
REM /MIR removes files in the destination that no longer exist in the source,
REM so moved/renamed pages don't leave stale copies behind that cause Hugo
REM REF_NOT_FOUND or 404s on _output_files downloads.
robocopy java          common\content\%PRODUCT%\java          /MIR /NFL /NDL /NJH /NJS /NP
robocopy net           common\content\%PRODUCT%\net           /MIR /NFL /NDL /NJH /NJS /NP
robocopy nodejs-java   common\content\%PRODUCT%\nodejs-java   /MIR /NFL /NDL /NJH /NJS /NP
robocopy python-net    common\content\%PRODUCT%\python-net    /MIR /NFL /NDL /NJH /NJS /NP
xcopy _index.md common\content\%PRODUCT% /Y
cd common
call hugo server
