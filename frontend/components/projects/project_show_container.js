import {connect} from 'react-redux';
import ProjectShow from './project_show';
import {fetchProject} from '../../actions/project_actions';

const mapStateToProps = (state, ownProps) => {
    let project = state.entities.projects[ownProps.match.params.id]
    let username = null;
    if (project) {
        username = state.entities.users[project.user_id].username
    }

    return {
    project: project,
    username: username
    };
};

const mapDispatchToProps = dispatch => ({
    fetchProject: projectId => dispatch(fetchProject(projectId))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectShow);

