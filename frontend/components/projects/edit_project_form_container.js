import React from 'react';
import { connect } from 'react-redux';
import ProjectForm from './project_form';
import { updateProject, fetchProject, clearErrors, deleteProject } from '../../actions/project_actions';

class EditProjectForm extends React.Component {
    componentDidMount() {
        this.props.fetchProject(this.props.match.params.id);
    }

    render() {
        const {action, formType, project, errors} = this.props

        if(!project) return null;

        return (
            <ProjectForm
                action={action}
                formType={formType}
                project={project}
                errors={errors}
            />
        );
    }
}

const mapStateToProps = (state, ownProps) => {
    debugger
    return ({
        project: state.entities.projects[ownProps.match.params.id],
        formType: 'Update Makeable',
        errors: Object.values(state.errors.project)
    });
};

const mapDispatchToProps = dispatch => ({
    fetchProject: projecctId => dispatch(fetchProject(projecctId)),
    updateProject: project => dispatch(updateProject(project)),
    deleteProject: project => dispatch(deleteProject(project.id)),
    clearErrors: () => dispatch(clearErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(EditProjectForm);