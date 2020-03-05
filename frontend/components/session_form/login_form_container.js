import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { login } from '../../actions/session_actions';
import SessionForm from '../session_form/session_form';

const mapStateToProps = ({ errors }) => {
    return {
        errors: Object.values(errors.session),
        formType: 'Login',
        link: <Link to="/signup">Sign Up</Link>,
    };
};

const mapDispatchToProps = dispatch => {
    return {
        processForm: (user) => dispatch(login(user)),
        loginDemoUser: () => dispatch(login({username: "demo", password: 'password'}))
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);