// const data = fetch('https://jsonplaceholder.typicode.com/users');
// data
//     .then(data => data.json())
//     .then(user =>console.log(user))
//     .catch(err => console.log(err))
//     .finally(() => console.log('promise execute'))


async function fetchData() {
    try {
        const response = await fetch('https://jsonplaceholder.typicode.com/users');
        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.log(error);
    }
}

fetchData()