import {connect} from 'react-redux';
import ProjectShow from './project_show';
import {fetchProject} from '../../actions/project_actions';

const mapStateToProps = (state, ownProps) => {
    return {
    project: state.entities.projects[ownProps.match.params.id]
    };
};

const mapDispatchToProps = dispatch => ({
    fetchProject: projectId => dispatch(fetchProject(projectId))
});

export default connect(mapStateToProps, mapDispatchToProps)(ProjectShow);

