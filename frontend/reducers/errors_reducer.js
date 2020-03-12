import { combineReducers } from 'redux';
import sessionsErrorsReducer from './sessions_errors_reducer';
import projectErrorsReducer from './project_errors_reducer';

const errorsReducer = combineReducers({
    session: sessionsErrorsReducer,
    project: projectErrorsReducer
});

export default errorsReducer;