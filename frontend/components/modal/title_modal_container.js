import {connect} from 'react-redux';
import {closeModal} from '../../actions/modal_actions';
import { createProject } from '../../actions/project_actions';
import TitleModal from './title_modal';

const mapStateToProps = state => {
    return({
        project: {
            title: '',
            description: ''
        },
        formType: "Publish Makeable",
        errors: Object.values(state.errors.project)
    });
};

const mapDispatchToProps = dispatch => ({
    closeModal: () => dispatch(closeModal()),
    createProject: project => dispatch(createProject(project))
})

export default connect(mapStateToProps, mapDispatchToProps)(TitleModal)