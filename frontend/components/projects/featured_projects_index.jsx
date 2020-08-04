import React from 'react';
import FeaturedProjectsIndexItem from './featured_projects_index_item';
import {Link} from 'react-router-dom';

class FeaturedProjectsIndex extends React.Component {
    constructor(props) {
        super(props)

        this.toTop = this.toTop.bind(this)
    }

    componentDidMount() {
        this.props.fetchAllProjects();
    }

    toTop() {
        $('html, body').scrollTop(0)
    }

    render() {
        if (this.props.projects.length <=1) {
            return null
        }

        const { projects, users, history } = this.props;

        return (
            <div className='featured-project-main'>
                <div className='featured-index-individual'>
                    <div className='featured-project-index-image'>
                        <a className='project-image' href={`#/projects/${projects[0].id}`}><img src={projects[0].photoUrl} onClick={() => this.toTop()} alt="" /></a>
                    </div>
                    <div className='featured-project-index-details'>
                        <Link to={`/projects/${projects[0].id}`} onClick={() => this.toTop()}>{projects[0].title}</Link>
                        <p>by: {users[projects[0].user_id].username}</p>
                    </div>
                </div>
                <div className='featured-index-individual'>
                    <div className='featured-project-index-image'>
                        <a className='project-image' href={`#/projects/${projects[4].id}`}><img src={projects[4].photoUrl} onClick={() => this.toTop()} alt="" /></a>
                    </div>
                    <div className='featured-project-index-details'>
                        <Link to={`/projects/${projects[4].id}`} onClick={() => this.toTop()}>{projects[4].title}</Link>
                        <p>by: {users[projects[4].user_id].username}</p>
                    </div>
                </div>
                <div className='featured-index-individual'>
                    <div className='featured-project-index-image'>
                        <a className='project-image' href={`#/projects/${projects[13].id}`}><img src={projects[13].photoUrl} onClick={() => this.toTop()} alt="" /></a>
                    </div>
                    <div className='featured-project-index-details'>
                        <Link to={`/projects/${projects[13].id}`} onClick={() => this.toTop()}>{projects[13].title}</Link>
                        <p>by: {users[projects[13].user_id].username}</p>
                    </div>
                </div>
                <div className='featured-index-individual'>
                    <div className='featured-project-index-image'>
                        <a className='project-image' href={`#/projects/${projects[19].id}`}><img src={projects[19].photoUrl} onClick={() => this.toTop()} alt="" /></a>
                    </div>
                    <div className='featured-project-index-details'>
                        <Link to={`/projects/${projects[19].id}`} onClick={() => this.toTop()}>{projects[19].title}</Link>
                        <p>by: {users[projects[19].user_id].username}</p>
                    </div>
                </div>
            </div>
        )
    }
}

export default FeaturedProjectsIndex