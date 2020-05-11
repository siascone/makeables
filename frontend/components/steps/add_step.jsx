import React from 'react';

class Step extends React.Component {
    constructor(props) {
        super(props)

        this.state = {
            heading: '',
            body: ''
        }

        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return e => this.setState({[field]: e.currentTarget.value});
    }

    handleSubmit(e) {
        e.preventDefault();

        let step = {
            heading: this.state.heading,
            body: this.state.body,
            project_id: this.props.project_id
        }

        this.props.createStep(step)
    }

    // componentWillUnmount() {
    //     this.props.clearErrors()
    // }

    render() {

        return (
            <div className='add-step-box'>
                <div className='add-step-fields'>
                    <div className="add-step-heading-box">
                        <div>Heading</div>
                        <textarea className="add-step-heading"
                            placeholder='Step number and title'
                            onChange={this.update('heading')}
                        >
                        </textarea>
                    </div>
                    <div className="add-step-body-box">
                    <div>Body</div>
                        <textarea className="add-step-body"
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
        )
    }
}

export default Step