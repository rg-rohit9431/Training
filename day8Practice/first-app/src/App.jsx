
import { BrowserRouter, Route, Routes } from 'react-router-dom'

//components
import Header from './components/Header'
import Footer from './components/Footer'
import Home from './components/Home'
import About from './components/About'
import Contact from './components/Contact'
import User from './components/User'
import Login from './components/Login'
import Product from './components/Products'
import ProductDetail from './components/ProductDetail'
import Registration from './components/Registration'


const App = () => {
  return (
    <>
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path='home' element={<Home />} />
          <Route path='about' element={<About />} />
          <Route path='user' element={<User />} />
          <Route path='contact' element={<Contact />} />
          <Route path='login' element={<Login />} />
          <Route path='product' element={<Product />} />
          <Route path='product/:id' element={<ProductDetail />} />
          <Route path='signup' element={<Registration />} />
        </Routes>

        <Footer />
      </BrowserRouter>
    </>
  )
}

export default App