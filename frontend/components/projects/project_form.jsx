import React from 'react';

class ProjectForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = this.props.project;

        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.action(this.state);
    }

    update(field) {
        return e => this.setState({[field]: e.currentTarget.value});
    }

    // componentWillUnmount() {
    //     this.props.clearErrors();
    // }

    render() {

        return (
            <div>
                <h2>{this.props.formType}</h2>
                <form onSubmit={this.handleSubmit}>
                    <label>Project Title:
                        <input type="text"
                            placeholder="Project Title"
                            value={this.state.title}
                            onChange={this.update('title')}
                        />
                    </label>
                    <label>Project Description
                        <textarea
                            placeholder="Project Description"
                            value={this.state.description}
                            onChange={this.update('description')}
                        />
                    </label>
                </form>
            </div>
        )
    }
}

export default ProjectForm;