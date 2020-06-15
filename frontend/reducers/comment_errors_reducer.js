import { RECEIVE_ERRORS, RECEIVE_PROJECT, CLEAR_ERRORS } from '../actions/comment_actions';
import projectErrorsReducer from './project_errors_reducer';

const commentErrorsReducer = (state = [], action) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_ERRORS:
            return action.errors;
        case RECEIVE_PROJECT:
            return [];
        case CLEAR_ERRORS:
            return {};
        default:
            return state;
    }
}

export default commentErrorsReducer;