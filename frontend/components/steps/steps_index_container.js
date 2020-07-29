import { connect } from 'react-redux'; 
import StepsIndex from './steps_index';
import { fetchAllSteps, deleteStep, updateStep } from '../../actions/step_actions';
import { withRouter } from 'react-router-dom';

const mSTP = (state, ownProps) => {
    
    let project = state.entities.projects[ownProps.match.params.id];
    if (project === undefined) {
        return {
            steps: Object.values(state.entities.steps),
            history: ownProps.history
        }
    } else {
        return {
            steps: Object.values(state.entities.steps),
            projectId: state.entities.projects[ownProps.match.params.id].id,
            history: ownProps.history
        }

    }
};

const mDTP = dispatch => ({
    fetchAllSteps: ((projectId) => dispatch(fetchAllSteps(projectId))),
    deleteStep: ((stepId) => dispatch(deleteStep(stepId))),
    updateStep: ((step, projectId) => dispatch(updateStep(step, projectId)))
});

export default withRouter(connect(mSTP, mDTP)(StepsIndex))