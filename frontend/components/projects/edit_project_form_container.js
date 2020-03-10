import React from 'react';
import { connect } from 'react-redux';
import ProjectForm from './project_form';
import { updateProject, fetchProject, clearErrors } from '../../actions/project_actions';

class EditProjectForm extends React.Component {
    componentDidMount() {
        this.props.fetchProject(this.props.match.params.id);
    }

    render() {
        const {action, formType, project} = this.props

        if(!project) return null;

        return (
            <ProjectForm
                action={action}
                formType={formType}
                project={project}
            />
        );
    }
}

const mapStateToProps = (state, ownProps) => {
    return ({
        project: state.entities.projects[ownProps.match.params.id],
        formType: 'Update Project'
    });
};

const mapDispatchToProps = dispatch => ({
    fetchProject: projecctId => dispatch(fetchProject(projecctId)),
    updateProject: project => dispatch(updateProject(project)),
    clearErrors: () => dispatch(clearErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(EditProjectForm);