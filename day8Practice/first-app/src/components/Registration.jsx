import axios from "axios";
import { useState } from "react";
import { useNavigate } from "react-router-dom";

function Registration() {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [address, setAddress] = useState('');
    const navigate = useNavigate();

    const handleSubmit = async(e) => {
        e.preventDefault();
        if (!email || !name || !address) {
            alert('All Fields are mandatory');
            return;
        }

        try {
            const uniqueNo = Date.now();
            const user = {
                id: uniqueNo,
                name,
                email,
                address
            };

            const res = await axios.post('http://localhost:3000/Users', user);
            console.log(res);
            if (res.status == '201') {
                alert('user created');
                navigate('/user')
            }

        } catch (error) {
            console.log(error);
        }
    }


    return (
        <>
            <div className="container m-5">
                <h3 className="text-center p-2 text-bg-secondary">Registration Page</h3>

                <form onSubmit={handleSubmit}>
                    <div className="mb-3">
                        <label className="form-label">Name</label>
                        <input type="text" className="form-control"
                            onChange={(e) => setName(e.target.value)} placeholder="Jhon Doe" />
                    </div>

                    <div className="mb-3">
                        <label className="form-label">Email Address</label>
                        <input type="email" className="form-control" onChange={(e) => setEmail(e.target.value)}
                            placeholder="john@gmail.com" />
                    </div>

                    <div className="">
                        <label className="form-label">Address</label>
                        <textarea className="form-control" onChange={(e) => setAddress(e.target.value)} rows="3"></textarea>
                    </div>
                    <button className="btn btn-primary mt-3 w-100">
                        Register Me
                    </button>
                </form>

            </div>
        </>
    );
}

export default Registration;