import React from 'react';
import * as SessionApiUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_ERRORS = 'CLEAR_ERRORS';

const receiveCurrentUser = currentUser => ({
    type: RECEIVE_CURRENT_USER,
    currentUser
});
const logoutCurrentUser = () => ({
    type: LOGOUT_CURRENT_USER,
});

const receiveErrors = (errors) => ({
    type: RECEIVE_ERRORS,
    errors,
});

export const clearErrors = () => ({
    type: CLEAR_ERRORS
});

export const signup = (user) => dispatch => {
    return SessionApiUtil.signup(user)
        .then(currentUser => dispatch(receiveCurrentUser(currentUser)), (errors) => dispatch(receiveErrors(errors.responseJSON)));
};
export const login = (user) => dispatch => {
    return SessionApiUtil.login(user)
        .then(user => dispatch(receiveCurrentUser(user)), (errors) => dispatch(receiveErrors(errors.responseJSON)));
};
export const logout = () => dispatch => SessionApiUtil.logout()
    .then((res) => {
        dispatch(logoutCurrentUser());
});
