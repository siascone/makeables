import {connect} from 'react-redux';
import {closeModal} from '../../actions/modal_actions';
import { createProject } from '../../actions/project_actions';
import { withRouter } from 'react-router-dom'
import TitleModal from './title_modal';

const mapStateToProps = (state, ownProps) => {
    return({
        project: {
            title: '',
            description: ''
        },
        formType: "Publish Makeable",
        errors: Object.values(state.errors.project),
        history: ownProps.history
    });
};

const mapDispatchToProps = dispatch => ({
    closeModal: () => dispatch(closeModal()),
    createProject: project => dispatch(createProject(project))
})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(TitleModal));