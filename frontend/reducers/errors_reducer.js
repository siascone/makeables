import { combineReducers } from 'redux';
import sessionsErrorsReducer from './sessions_errors_reducer';
import projectErrorsReducer from './project_errors_reducer';
import stepsErrorsReducer from './steps_errors_reducer';

const errorsReducer = combineReducers({
    session: sessionsErrorsReducer,
    project: projectErrorsReducer,
    steps: stepsErrorsReducer
});

export default errorsReducer;