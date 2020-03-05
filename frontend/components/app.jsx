import React from 'react';
import { Route, Link } from 'react-router-dom';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import GreetingContainer from '../components/greeting/greeting_container';
import { AuthRoute } from '../util/route_util';
import SubHeader from '../components/sub_header/sub_header';
import Splash from './splash/splash';
import Footer from './footer/footer';


const App = () => (
    
    <div className="main">
        <div>
            <header className="header-1">
                <div className='nav-links'>
                    <Link to="/" className='header-link'>Home</Link>
                </div>
                <GreetingContainer />
            </header>
            <header className='header-2'>
                <SubHeader />
            </header>
            <Route exact path='/' component={Splash} />
            <AuthRoute path="/login" component={LoginFormContainer} />
            <AuthRoute path="/signup" component={SignupFormContainer} />
            <Footer />
        </div>
    </div>
)

export default App;