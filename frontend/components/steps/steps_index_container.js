import { connect } from 'react-redux'; 
import StepsIndex from './steps_index';
import { fetchAllSteps } from '../../actions/step_actions';
import { withRouter } from 'react-router-dom';

const mSTP = (state, ownProps) => {
    return {
        steps: Object.values(state.entities.steps),
        projectId: state.entities.projects[ownProps.match.params.id].id
    }
};

const mDTP = dispatch => ({
    fetchAllSteps: ((projectId) => dispatch(fetchAllSteps(projectId)))
});

export default withRouter(connect(mSTP, mDTP)(StepsIndex))