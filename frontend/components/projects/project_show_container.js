import {connect} from 'react-redux';
import ProjectShow from './project_show';
import {fetchProject, deleteProject, fetchAllProjects} from '../../actions/project_actions';
import { fetchAllSteps } from '../../actions/step_actions';

const mapStateToProps = (state, ownProps) => {
    let project = state.entities.projects[ownProps.match.params.id]
    let projectId = ownProps.match.params.id
    let username = null;
    let userId = null;
    let sessionId = null;

    if (project) {
        username = state.entities.users[project.user_id].username;
        userId = project.user_id,
        sessionId = state.session.id
    }
    return {
    project: project,
    projectId: projectId,
    username: username,
    userId: userId,
    sessionId: sessionId
    };
};

const mapDispatchToProps = dispatch => ({
    fetchAllProjects: () => dispatch(fetchAllProjects()),
    fetchProject: projectId => dispatch(fetchProject(projectId)),
    deleteProject: projectId => dispatch(deleteProject(projectId)),
    fetchAllSteps: projectId => dispatch(fetchAllSteps(projectId))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectShow);

