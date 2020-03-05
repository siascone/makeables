import React from 'react';
import { Link } from 'react-router-dom';
import UserDropdownContainer from '../user_dropdown/user_dropdown_container';

const Greeting = ({ currentUser, logout }) => {
    const links = () => (
        <div className="login-signup">
            <Link to="/login">Login</Link>
            <Link to="/signup">Sign Up</Link>
        </div>
    );
    const greeting = () => (
        <div>
            <div className="greeting">
                <UserDropdownContainer />
            </div>
        </div>
    );

    return currentUser ? greeting() : links()
}

export default Greeting;
