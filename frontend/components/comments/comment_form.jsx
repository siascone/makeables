import React from 'react';

class CommentForm extends React.Component {
    constructor(props) {
        super(props)

        this.state = this.props.comment
        this.state.body = ""

        this.handleSubmit = this.handleSubmit.bind(this);

    }

    update(field) {
        return e => {
            this.setState({[field]: e.currentTarget.value});
        }
    }

    handleSubmit(e) {
        e.preventDefault();

        let comment = {
            body: this.state.body,
            user_id: this.state.user_id,
            project_id: this.state.project_id
        }

        // if (this.state.formType === "New Comment") {
        //     this.props.createComment(comment)
        // } else if (this.state.formType === "Edit Comment") {
        //     this.props.updateComment(comment)
        // }

        this.props.createComment(comment)

        this.setState({body: ""})
        
    }

    renderErrors() {
        if (this.props.comment.errors.length > 0) {
            return (
                <div className='comment-errors'>
                    {this.props.comment.errors.map((error, i) => (
                        <li key={`error ${i}`}>{error}</li>
                    ))}
                </div>
            )
        } else {
            return null
        }
    }

    componentWillUnmount() {
        this.props.clearErrors()
    }

    render() {
        return (
            <div className='new-comment-main'>
                <div className='new-comment-box' >
                    <div className='icon-and-body'>
                        <img className='user-icon' src="https://www.instructables.com/assets/img/default/user.TINY.png" width="35px" height="35px" />
                        <textarea
                            className='new-comment-textarea'
                            value={this.state.body}
                            placeholder='Add your comment'
                            onChange={this.update('body')}>    
                        </textarea>
                    </div>
                    <div className='new-comment-button'>
                        <div></div>
                        <button 
                            className='submit-comment'
                            onClick={this.handleSubmit}>
                            Post
                        </button>
                    </div>
                </div>
            </div>
        )
    }
}

export default CommentForm;