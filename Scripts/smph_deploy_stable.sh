git clone https://github.com/PatternHouse/BASE.git
rm -rf BASE/stable/latest
mkdir -v BASE/stable/latest
cp -rv firebuild/basegen/* BASE/stable/latest
cd BASE
export YEAR=$(date +'%Y')
export MONTH=$(date +'%m')
export DAY=$(date +'%d')
echo LAST_DEPLOY_DATE:$YEAR/$MONTH/$DAY > stable/latest/state.dat
echo SEMAPHORE_JOB_ID:$SEMAPHORE_JOB_ID >> stable/latest/state.dat
echo 
git config user.name $SMDN
git config user.email $SMDE
git add *
git status
git commit -a -m "Semaphore CI/CD : Weekly Stable Deploy ... "
git push https://$SMDN:$SMDPAT@github.com/PatternHouse/BASE.git  
