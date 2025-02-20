import { useEffect, useState } from 'react';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';

const Users = () => {
    const [data, setData] = useState();

    const fetchData = async () => {
        try {
            const resp = await axios.get('http://localhost:3000/Users');
            setData(resp?.data);
        } catch (err) {
            console.log(err);
        }
    };

    const deleteUser = async (id) => {
        try {
            const res = await axios.delete('http://localhost:3000/Users/' + id);
            console.log(res);
            if (res.status) {
                alert('user deleted');
            }
        } catch (err) {
            console.log(err);
        }
    };

    useEffect(() => {
        fetchData();
    }, []);

    return (
        <div className="container mt-5">
            <h2>Users</h2>
            <table className="table table-striped table-bordered">
                <thead className="thead-dark">
                    <tr className='text-center'>
                        <th className='text-start'>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Operators</th>
                    </tr>
                </thead>
                <tbody>
                    {data?.map((user, index) => (
                        <tr key={index} className='text-center'>
                            <td className='text-start'>{user?.id}</td>
                            <td>{user?.name}</td>
                            <td>{user?.email}</td>
                            <td>{user?.address}</td>
                            <td className=" pointer-event" onClick={() => deleteUser(user.id)}>❌</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};

export default Users;

