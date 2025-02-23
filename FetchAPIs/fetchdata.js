const resp = fetch('https://jsonplaceholder.typicode.com/users')

resp
.then(resp=>console.log(resp.status))
.catch(err=>console.log(err))
.finally(()=>console.log('Promise Executed'))

