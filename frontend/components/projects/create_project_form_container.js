import React from 'react';
import { connect } from 'react-redux';
import ProjectForm from './project_form';
import { createProject, clearErrors } from '../../actions/project_actions';

const mapStateToProps = state => {

    return ({
        project: {
        title: '',
        description: '',
        },
        formType: "Create Project"
    });
};

const mapDispatchToProps = dispatch => ({
    createProject: project => dispatch(createProject(project)),
    clearErrors: () => dispatch(clearErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectForm);