import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { signup, clearErrors } from '../../actions/session_actions';
import SessionForm from '../session_form/session_form';
import { login } from '../../actions/session_actions';

const mapStateToProps = ({ errors }) => {
    return {
        errors: Object.values(errors.session),
        formType: 'Sign Up',
        link: <Link to="/login">Login</Link>,
        };
};

const mapDispatchToProps = dispatch => {
    return {
        processForm: (user) => dispatch(signup(user)),
        loginDemoUser: () => dispatch(login({ username: "sixstringsloud", password: 'password' })),
        clearErrors: () => dispatch(clearErrors())

    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);