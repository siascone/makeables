import React from 'react';
import { Link, Redirect } from 'react-router-dom';
import StepsIndexContainer from '../steps/steps_index_container';
import CommentsIndexContainer from '../comments/comments_index_container';
import CreateCommentFormContainer from '../comments/create_comment_form_container'
import EditCommentFormContainer from '../comments/edit_comment_form_container'


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
            edit = <div className='edit-button'>
                    <Link className='edit-link' to={`/projects/${projectId}/edit`}>Edit</Link>
                   </div>
                   
            del =  <div className='delete-btn-div'>
                        <button className="delete-button" onClick={this.remove}>Delete</button>
                   </div>
                
        }

        let commentEntry = null
        if (sessionId) {
            commentEntry = <CreateCommentFormContainer />
        }

        
        if (!project) return null;
        return (
            <div className='project-show-main'>
                <div className='project-show-title-by'>
                    <h1>{project.title}</h1>
                    <div className='username-edit'>
                        <div className='username-show'>Published by {username}:</div>
                    </div>
                    
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
                <div className="delete-edit-div">
                    {edit} {del}
                </div>
                <div className='project-comments'>
                    <div>
                        Comments from other Makers:
                        <CommentsIndexContainer />
                    </div>
                    {commentEntry}
                </div>
            </div>
        )
    }
}

export default ProjectShow;