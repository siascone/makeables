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
            <div className='comments-box'>
                {/* <p>Comments</p> */}
                {/* <div className='comments'>
                    <CommentsIndexContainer />
                </div> */}
                <div className='new-comment-box' >
                    <textarea
                        value={this.state.body}
                        placeholder='Add your comment'
                        onChange={this.update('body')}>    
                    </textarea>
                    <div className='new-comment-button'>
                        <button 
                            className='submit-comment'
                            onClick={this.handleSubmit}>
                            Submit
                        </button>
                    </div>
                </div>
            </div>
        )
    }
}

export default CommentForm;