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
                <div className="add-step-heading-box">
                    <label>Heading</label>
                    <input className="add-step-heading" type="text"
                        placeholder='Add a heading to this step'
                        onChange={this.update('heading')}
                    />
                </div>
                <div className="add-step-body-box">
                <label>Body</label>
                    <input className="add-step-body" type='textbox'
                        placeholder='What happens in this step?'
                        onChange={this.update('body')}
                    ></input>
                </div>
                <button className="add-step-button" onClick={this.handleSubmit}>Add Step</button>
            </div>
        )
    }
}

export default Step