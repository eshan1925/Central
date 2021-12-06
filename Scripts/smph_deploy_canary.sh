git clone https://github.com/PatternHouse/BASE.git
rm -rf BASE/canary/latest
mkdir -v BASE/canary/latest
cp -rv firebuild/basegen/* BASE/canary/latest
cd BASE
export YEAR=$(date +'%Y')
export MONTH=$(date +'%m')
export DAY=$(date +'%d')
echo LAST_DEPLOY_DATE:$YEAR/$MONTH/$DAY > canary/latest/state.dat
echo SEMAPHORE_JOB_ID:$SEMAPHORE_JOB_ID >> canary/latest/state.dat
echo 
git config user.name $SMDN
git config user.email $SMDE
git add *
git status
git commit -a -m "Semaphore CI/CD : Canary Deploy ... "
git push https://$SMDN:$SMDPAT@github.com/PatternHouse/BASE.git 
