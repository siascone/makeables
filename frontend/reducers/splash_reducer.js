import {RECEIVE_ALL_PROJECTS} from '../actions/project_actions'

const spalshReducer = (state = {}, action) => {
    Object.freeze(state);

    let newState = Object.assign({}, state);
    switch (action.type) {
        case RECEIVE_ALL_PROJECTS:
            return action.payload.projects;
        default:
            return state;
    }
}

export default spalshReducer