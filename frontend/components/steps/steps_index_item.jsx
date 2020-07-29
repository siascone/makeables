import React from 'react';
// import { debug } from 'webpack';
// import { Link } from 'react-router-dom';


class StepsIndexItem extends React.Component {
    constructor(props) {
        super(props)

        this.state = this.props.step

        this.edit = false
        this.editStep = this.editStep.bind(this)
        this.deleteStep = this.deleteStep.bind(this)
    }

    editStep(e) {
        e.preventDefault()
        this.edit = true
        this.forceUpdate()
    }

    deleteStep(e) {
        e.preventDefault()
        this.props.deleteStep(this.state.id)
        this.edit = false
        this.forceUpdate()
    }

    render() {
        
        let path = this.props.history.location.pathname.split('/').pop()

        let delStep
        let editStep 

        if (path == 'edit') {
            
            delStep = <li
                        onClick={this.deleteStep}>
                        Delete
                    </li>
            editStep = <li
                        onClick={this.editStep}>
                        Edit
                    </li>
        }

        if (this.state.project_id == this.props.projectId) {
            return (
                <div className='step-box'>
                    <div className='step-item'>
                        <div className="heading-div">
                            <div className="heading">{this.state.heading}</div>
                        </div>
                        <div className='body'>{this.state.body}</div>
                        <div className='edit-delete-steps'>
                            {delStep}
                            {editStep}
                        </div>
                    </div>
                    <br />
                </div>
            )
        } else {
            return null
        }

    }

    
};

export default StepsIndexItem