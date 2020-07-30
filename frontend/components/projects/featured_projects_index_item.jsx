import React from 'react';
import {Link} from 'react-router-dom';

class FeaturedProjectsIndexItem extends React.Component {
    constructor(props) {
        super(props)

        this.state = this.props.project
    }

    render() {
        let image
        if (this.state.photoUrl) {
            image = <a className='project-image' href={`#/projects/${this.state.id}`}><img src={this.state.photoUrl} alt="" /></a>

        } else {
            image = <a href={`#/projects/${this.state.id}`}><p>This project does not have an image associated with it.</p></a>
        }

        return (
            <div className='project-index-individual'>
                <div className='project-index-image'>
                    {image}
                </div>
                <div className='project-index-details'>
                    <Link to={`/projects/${this.state.id}`}>{this.state.title}</Link>
                    <p>by: {this.props.user.username}</p>
                </div>
            </div>
        )
    }
}

export default FeaturedProjectsIndexItem