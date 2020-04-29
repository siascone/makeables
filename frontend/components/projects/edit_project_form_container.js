import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom'
import ProjectForm from './project_form';
import { updateProject, fetchProject, clearErrors, deleteProject } from '../../actions/project_actions';


const mapStateToProps = (state, ownProps) => {
    return ({
        project: state.entities.projects[ownProps.match.params.id],
        errors: Object.values(state.errors.project),
        history: ownProps.history
    });
};

const mapDispatchToProps = dispatch => ({
    fetchProject: projecctId => dispatch(fetchProject(projecctId)),
    updateProject: project => dispatch(updateProject(project)),
    deleteProject: project => dispatch(deleteProject(project.id)),
    clearErrors: () => dispatch(clearErrors())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ProjectForm));