git clone https://github.com/PatternHouse/BASE.git
rm -rf BASE/beta/latest
mkdir -v BASE/beta/latest
cp -rv firebuild/basegen/* BASE/beta/latest
cd BASE
export YEAR=$(date +'%Y')
export MONTH=$(date +'%m')
export DAY=$(date +'%d')
echo LAST_DEPLOY_DATE:$YEAR/$MONTH/$DAY > beta/latest/state.dat
echo SEMAPHORE_JOB_ID:$SEMAPHORE_JOB_ID >> beta/latest/state.dat
echo 
git config user.name $SMDN
git config user.email $SMDE
git add *
git status
git commit -a -m "Semaphore CI/CD : Daily Beta Deploy ... "
git push https://$SMDN:$SMDPAT@github.com/PatternHouse/BASE.git
