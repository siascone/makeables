import React from 'react';

class CommentIndexItem extends React.Component {
    constructor(props) {
        super(props)

        this.state = this.props.comment

        this.deleteCom = this.deleteCom.bind(this)
    }

    deleteCom(e) {
        e.preventDefault();
        this.props.deleteComment(this.props.comment.id)
    }

    render() {

        let delCom
        if (this.props.comment.user_id === this.props.sessionId) {
            delCom = <button
                        onClick={this.deleteCom}
                    >
                    Delete
                    </button>
        }
        if (this.props.comment.project_id === this.props.projectId) {
            return (
                <div className='comment-box'>
                    <div className='comment-item'>
                        <p>Comment by: {this.props.comment.username}</p>
                        <p>{this.props.comment.body}</p>
                        {delCom}
                    </div>
                </div>
            )

        } else {
            return null
        }
    }

}

export default CommentIndexItem;