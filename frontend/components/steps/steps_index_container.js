import { connect } from 'react-redux'; 
import StepsIndex from './steps_index';
import { fetchAllStpes } from '../../actions/step_actions';

const mSTP = (state) => {
    return {
        steps: Object.values(state.entities.steps),
        projects: state.entities.projects
    }
};

const mDTP = dispatch => ({
    fetchAllStpes: ((projectId) => dispatch(fetchAllStpes(projectId)))
});

export default connect(mSTP, mDTP)(StepsIndex)