 docker compose up -d
 
 echo "database started locally"


 curl -o ./scripts/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /
 chmod +x ./scripts/wait-for-it.sh

./scripts/wait-for-it.sh "postgresql://postgres:mysecretpassword@localhost:5432/postgres?schema=public"

 echo "database started successfully" 

 npx prisma migrate dev --name init

 npm run test 

 docker compose down

 echo "alldone!" 


