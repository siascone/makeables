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
        this.handleSubmit = this.handleSubmit.bind(this)
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

    update(field) {
        return e => {
            this.setState({ [field]: e.currentTarget.value})
        }
    }

    handleSubmit(e) {
        e.preventDefault()
        this.props.updateStep(this.state, this.state.projectId)
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

        let step

        if (this.edit == false) {
            step = <div className='step-item'>
                        <div className="heading-div">
                            <div className="heading">{this.state.heading}</div>
                        </div>
                        <div className='body'>{this.state.body}</div>
                        <div className='edit-delete-steps'>
                            {delStep}
                            {editStep}
                        </div>
                    </div>
        } else {
            step = <div className='add-step-box'>
                        <div className='add-step-fields'>
                            <div className="add-step-heading-box">
                                <div>Heading</div>
                                <textarea className="add-step-heading"
                                    value={this.state.heading}
                                    placeholder='Step number and title'
                                    onChange={this.update('heading')}
                                >
                                </textarea>
                            </div>
                            <div className="add-step-body-box">
                                <div>Body</div>
                                <textarea className="add-step-body"
                                value={this.state.body}
                                placeholder='Step details'
                                onChange={this.update('body')}
                                ></textarea>
                            </div>
                        </div>
                        <div className='add-step-submit'>
                            <div></div>
                            <button className="add-step-button" onClick={this.handleSubmit}>Add Step</button>
                        </div>
                    </div>
        }

        if (this.state.project_id == this.props.projectId) {
            return (
                <div className='step-box'>
                    {step}
                    <br />
                </div>
            )
        } else {
            return null
        }

    }

    
};

export default StepsIndexItem