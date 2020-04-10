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
            .then(res => console.log(res))
        
    }

    componentWillUnmount() {
        this.props.clearErrors()
    }

    render() {

        return (
            <div>
                <label>Heading</label>
                <input type="text"
                    placeholder='Add a heading to this step'
                    onChange={this.update('heading')}
                />
                <br />
                <label>Body</label>
                <input type='textbox'
                    placeholder='What happens in this step?'
                    onChange={this.update('body')}
                ></input>
                <br />
                <button onClick={this.handleSubmit}>Add Step</button>
            </div>
        )
    }
}

export default Step