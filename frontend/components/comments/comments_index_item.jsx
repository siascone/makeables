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
                    <div className='commenter-details'>
                        <div className='commenter'>
                            <img className='user-icon' src="https://www.instructables.com/assets/img/default/user.TINY.png" width="35px" height="35px" />
                            <p><span>{this.props.comment.username}</span> on {this.props.comment.created_at.split("-")[1]}/{this.props.comment.created_at.split("-")[2].slice(0, 2)}/{this.props.comment.created_at.split("-")[0]}</p>
                        </div>
                        <div className="delete-comment">
                            {delCom}
                        </div>
                    </div>
                    <div className="comment-item">
                        <p>{this.props.comment.body}</p>
                    </div>
                </div>
            )

        } else {
            return null
        }
    }

}

export default CommentIndexItem;