import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { RECEIVE_PROJECT, RECEIVE_ALL_PROJECTS } from '../actions/project_actions';

const usersReducer = (state = {}, action) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            return Object.assign({}, state, {[action.currentUser.id]: action.currentUser});
        case RECEIVE_PROJECT:
            return {[action.payload.user.id]: action.payload.user};
        case RECEIVE_ALL_PROJECTS:
            return action.payload.users;
        default:
            return state;
    }
};

export default usersReducer;