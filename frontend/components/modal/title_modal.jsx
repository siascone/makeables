import React from 'react';

class TitleModal extends React.Component {
    constructor(props) {
        super(props)
        this.state = this.props.project;

        this.handleSubmit = this.handleSubmit.bind(this);

    }


    update(field) {
        return e => this.setState({ [field]: e.currentTarget.value });
    }

    handleSubmit(e) {
        e.preventDefault();
        this.setState({title: e.target.value})
        this.props.closeModal()
    }



    render() {
        return (
            <div>
                <div>
                    WHAT DO YOU WANT TO SHARE?
                    </div>
                <div>
                    <div>
                        I made a project called:
                        </div>
                    <div>
                        <input
                            type="text"
                            value={this.props.title}
                            onChange={this.update('title')}
                        />
                    </div>
                    <div>
                        <button onClick={this.handleSubmit}>Start Makeable</button>
                    </div>
                </div>
            </div>
        )
    }
}

export default TitleModal;