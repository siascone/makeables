import React from 'react';
import { Link, Redirect } from 'react-router-dom';
import StepsIndexContainer from '../steps/steps_index_container';


class ProjectShow extends React.Component {
    constructor(props) {
        super(props)

        this.remove = this.remove.bind(this);
    }

    componentDidMount() {
        this.props.fetchProject(this.props.match.params.id);
    }

    remove(e) {
        e.preventDefault();
        this.props.deleteProject(this.props.project.id)
        this.props.fetchAllProjects()
        this.props.history.push('/projects/')
    }

    render() {
        const {project, projectId, username, sessionId, userId} = this.props;
        let edit;
        let del;
        if (sessionId === userId) {
            edit = <div className="edit-btn-div">
                        <Link to={`/projects/${projectId}/edit`}>Edit</Link>
                   </div>
            del =  <div className='delete-btn-div'>
                        {/* <label for='delete-button'>Delete</label> */}
                        <button className="delete-button" onClick={this.remove}>Delete</button>
                   </div>
                
        }
        
        if (!project) return null;
        return (
            <div className='project-show-main'>
                <div className='project-show-title-by'>
                    <h1>{project.title}</h1>
                    <h2>by {username}</h2>
                    <div className='edit-delete-btns'>{edit} {del}</div>
                    
                </div>
                <div className='project-show-image'>
                    <img src={project.photoUrl} alt=""/>
                </div>
                <div className='project-show-description'>
                    <p>{project.description}</p>
                </div>
                <div className='project-show-steps'>
                    <StepsIndexContainer />
                </div>
            </div>
        )
    }
}

export default ProjectShow;