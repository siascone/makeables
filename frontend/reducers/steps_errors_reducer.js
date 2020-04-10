import { RECEIVE_ERRORS, 
    RECEIVE_STEP, 
    CLEAR_ERRORS 
} from '../actions/step_actions';

const stepErrorsReduccer = (state = [], action ) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_ERRORS:
            return action.errors;
        case RECEIVE_STEP:
            return [];
        case CLEAR_ERRORS:
            return {};
        default:
            return state;
    }
}

export default stepErrorsReduccer