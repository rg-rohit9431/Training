import axios from 'axios';
import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';


function Product() {

    const [product, setProduct] = useState();
    const fetchData = async () => {
        try {
            const response = await axios.get('https://dummyjson.com/product')
            console.log(response);
            setProduct(response.data.products);
        } catch (e) {
            console.log(e);
        }
    }
    useEffect(() => {
        fetchData();
    }, []);

    return (
        <>


            <h3 className="text-center p-2 text-bg-secondary">Product Page</h3>

            <div className='row p-4'>
                {
                    product?.map((product, index) => (
                        <div key={index} className='p-2 col-lg-4 col-md-6'>
                            <h3>{product.title}</h3>
                            <Link to={`/product/${product.id}`}>
                                <img src={product.thumbnail} alt={product.title} />
                            </Link>
                            <p>${product.price}</p>
                            <p>Rating: {product.rating}</p>
                            <button className='btn btn-primary'>Add to Cart</button>
                        </div>
                    ))
                }
            </div>
        </>
    );
}

export default Product;