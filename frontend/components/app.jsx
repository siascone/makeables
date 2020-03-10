import React from 'react';
import { Route, Link, Redirect, Switch } from 'react-router-dom';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import GreetingContainer from '../components/greeting/greeting_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import SubHeader from '../components/sub_header/sub_header';
import Splash from './splash/splash';
import Footer from './footer/footer';
import ProjectsIndexContainer from '../components/projects/projects_index_container';
import ProjectShowContainer from '../components/projects/project_show_container';
import EditProjectFormContainer from '../components/projects/edit_project_form_container';
import CreateProjectFormContainer from '../components/projects/create_project_form_container';


const App = () => (
    
    <div className="main">
        <div>
            <div className="header-1">
                <div className='nav-links'>
                    <Link to="/" className='header-link'><i className="fa fa-home fa-lg"></i></Link>
                </div>
                <GreetingContainer />
            </div>
            <header className='header-2'>
                <SubHeader />
            </header>
            <Switch>
                <AuthRoute path="/login" component={LoginFormContainer} />
                <AuthRoute path="/signup" component={SignupFormContainer} />
                <Route exact path='/projects/' component={ProjectsIndexContainer}/>
                <ProtectedRoute exact path='/projects/new' component={CreateProjectFormContainer} />
                <Route exact path='/projects/:id' component={ProjectShowContainer} />
                <ProtectedRoute exact path='/projects/:id/edit' component={EditProjectFormContainer} />
                <Route exact path='/' component={Splash} />
                <Redirect to='/'/>
            </Switch>
            <Footer />
        </div>
    </div>
)

export default App;