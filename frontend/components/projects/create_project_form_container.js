import React from 'react';
import { connect } from 'react-redux';
import ProjectForm from './project_form';
import { createProject, clearErrors } from '../../actions/project_actions';
import {openModal} from '../../actions/modal_actions';

const mapStateToProps = state => {

    return ({
        project: {
        title: '',
        description: '',
        },
        formType: "Publish Makeable"
    });
};

const mapDispatchToProps = dispatch => ({
    createProject: project => dispatch(createProject(project)),
    clearErrors: () => dispatch(clearErrors()),
    openModal: () => dispatch(openModal())

});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectForm);