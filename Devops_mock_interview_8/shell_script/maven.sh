

date >> project.status
echo "Name, Status" >> project.status
for project in $( cat project.list )
do
	echo "running project $project"
	cd $project
	git pull
	mvn clean install
	if [ $? -eq 0 ]
	then
	  echo "$project,Success" >> ../project.status
	else
          echo "$project,Failure" >> ../project.status
	fi
	cd ..

done

echo "---------" >> project.status 
