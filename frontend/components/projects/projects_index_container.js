import React from 'react';
import { connect } from 'react-redux';
import ProjectsIndex from './projects_index';
import { fetchAllProjects } from '../../actions/project_actions';

const mapStateToProps = ({ entities: { projects } }) => ({
    projects: Object.values(projects)
});

const mapDispatchToProps = dispatch => ({
    fetchAllProjects: (() => dispatch(fetchAllProjects()))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectsIndex);