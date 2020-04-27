import React from 'react';


class TitleModal extends React.Component {
    constructor(props) {
        super(props)
        this.state = this.props.project

        this.handleSubmit = this.handleSubmit.bind(this);
    }


    update(field) {
        return e => this.setState({[field]: e.currentTarget.value });
    }

    // handleSubmit(e) {
    //     e.preventDefault();
    //     localStorage.setItem('title', this.state.title)
    //     this.props.closeModal()
    // }

    handleSubmit(e) {
        e.preventDefault();
        let project = {project: this.state}
        debugger
        this.props.createProject(project)
            .then((project) => this.props.history.push(`/projects/${project.id}`))
        this.props.closeModal();
    }



    render() {
        return (
            <div className='title-modal-main'>
                <div className='title-modal-greeting'>
                </div>
                <div className='title-modal-statement'>
                    <div>
                        I made a project called:
                    </div>
                    <div className='title-modal-input'>
                        <input
                            type="text"
                            value={this.props.title}
                            onChange={this.update('title')}
                        />
                    </div>
                    <div className='title-modal-submit'>
                        <button onClick={this.handleSubmit}>Start Makeable</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default TitleModal;