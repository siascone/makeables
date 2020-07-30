import React from 'react';
import { connect } from 'react-redux';
import FeaturedProjectsIndex from './featured_projects_index';
import { fetchAllProjects } from '../../actions/project_actions';
import { withRouter } from 'react-router-dom';


const mapStateToProps = (state, ownProps) => {
    return {
        projects: Object.values(state.entities.projects),
        users: state.entities.users,
        history: ownProps.history,
    }
};

const mapDispatchToProps = dispatch => ({
    fetchAllProjects: (() => dispatch(fetchAllProjects()))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(FeaturedProjectsIndex));