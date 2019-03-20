rm -rf .stack-work/hoogle/
ionice -c 3 nice stack hoogle --no-setup --rebuild
ionice -c 3 nice hoogle server --local --database=`find .stack-work/hoogle/ -name database.hoo` 
