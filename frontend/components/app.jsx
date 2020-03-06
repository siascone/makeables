import React from 'react';
import { Route, Link, Redirect, Switch } from 'react-router-dom';
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
            <div className="header-1">
                <div className='nav-links'>
                    <Link to="/" className='header-link'><i class="fa fa-home fa-lg"></i></Link>
                </div>
                <GreetingContainer />
            </div>
            <header className='header-2'>
                <SubHeader />
            </header>
            <Switch>
                <AuthRoute path="/login" component={LoginFormContainer} />
                <AuthRoute path="/signup" component={SignupFormContainer} />
                <Route exact path='/' component={Splash} />
                <Redirect to='/'/>
            </Switch>
            
            <Footer />
        </div>
    </div>
)

export default App;