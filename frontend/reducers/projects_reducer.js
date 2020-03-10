import { RECEIVE_ALL_PROJECTS, RECEIVE_PROJECT, 
    REMOVE_PROJECT } from "../actions/project_actions";

const projectsReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state);

    switch (action.type) {
        case RECEIVE_ALL_PROJECTS:
            return action.projects;
        case RECEIVE_PROJECT:
            return {[action.project.id]: action.project};
        case REMOVE_PROJECT:
            delete newState[action.projectId];
            return newState;
        default:
            return state;
    }
};

export default projectsReducer;



