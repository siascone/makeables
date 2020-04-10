import { combineReducers } from "redux";

import usersReducer from "./users_reducer";
import projectsReducer from '../reducers/projects_reducer';
import stepsReducer from '../reducers/steps_reducer';

const entitiesReducer = combineReducers({
    users: usersReducer,
    projects: projectsReducer,
    steps: stepsReducer
});

export default entitiesReducer;