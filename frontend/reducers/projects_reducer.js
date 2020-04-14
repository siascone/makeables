import { RECEIVE_ALL_PROJECTS, RECEIVE_PROJECT, 
    REMOVE_PROJECT } from "../actions/project_actions";

const projectsReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state);

    switch (action.type) {
        case RECEIVE_ALL_PROJECTS:
            return action.payload.projects;
        case RECEIVE_PROJECT:
            return {[action.payload.project.id]: action.payload.project};
        case REMOVE_PROJECT:
            debugger
            delete newState[action.projectId];
            return newState;
        default:
            return state;
    }
};

export default projectsReducer;



