import { 
    RECEIVE_ALL_STEPS, 
    RECEIVE_STEP, 
    REMOVE_STEP 
} from '../actions/step_actions';

const stepsReducer = (state ={}, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state);
    
    switch (action.type) {
        case RECEIVE_ALL_STEPS:
            return action.steps.steps;
        case RECEIVE_STEP:
            newState[action.step.id] = action.step;
            return newState
        case REMOVE_STEP:
            delete newState[action.stepId];
            return newState;
        default:
            return state;
    }
}

export default stepsReducer