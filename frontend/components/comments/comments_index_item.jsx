import React from 'react';

class CommentIndexItem extends React.Component {
    constructor(props) {
        super(props)

        this.state = this.props.comment
        this.edit = false
        this.deleteCom = this.deleteCom.bind(this)
        this.editComment = this.editComment.bind(this)
        this.cancleEdit = this.cancleEdit.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    deleteCom(e) {
        e.preventDefault();
        this.props.deleteComment(this.props.comment.id)
    }

    editComment(e) {
        e.preventDefault();
        this.edit = true
        this.forceUpdate()
    }

    cancleEdit(e) {
        e.preventDefault();
        this.edit = false
        this.forceUpdate()
    }

    update(field) {
        return e => {
            this.setState({ [field]: e.currentTarget.value });
        }
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.updateComment(this.state, this.state.projectId )
        this.edit = false
        this.forceUpdate()

    }

    render() {
        
        let delCom
        let editCom
        if (this.props.comment.user_id === this.props.sessionId) {
            delCom = <li
                        onClick={this.deleteCom}
                    >
                    Delete
                    </li>
            editCom = <li onClick={this.editComment} >
                    Edit
                    </li>
        }

        let com
        if (this.edit == false) {
            com = <p>{this.props.comment.body}</p>
        } else {
            com = 
                    <div className='edit-comment-main'>
                        <div className='edit-comment-box' >
                            <div className='icon-and-body'>
                                <img className='user-icon' src="https://www.instructables.com/assets/img/default/user.TINY.png" width="35px" height="35px" />
                                <textarea
                                    className='new-comment-textarea'
                                    value={this.state.body}
                                    placeholder='Add your comment'
                                    onChange={this.update('body')}>
                                </textarea>
                            </div>
                            <div className='edit-comment-button'>
                                <div className='be-nice-message'>
                                    <p>We have a <span>be nice</span> policy.</p>
                                    <p>Please be positive and constructive.</p>
                                </div>
                                <div className='cancle-submit-buttons'>
                                    <button
                                        className='cancle-edit-button'
                                        onClick={this.cancleEdit}>
                                        Cancle
                                    </button>
                                    <button
                                        className='submit-edited-comment'
                                        onClick={this.handleSubmit}>
                                        Save
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
            editCom = <li></li>
        }

        if (this.props.comment.project_id === this.props.projectId) {
            return (
                <div className='comment-box'>
                    <div className='commenter-details'>
                        <div className='commenter'>
                            <img className='user-icon' src="https://www.instructables.com/assets/img/default/user.TINY.png" width="35px" height="35px" />
                            <p><span>{this.props.comment.username}</span> on {this.props.comment.created_at.split("-")[1]}/{this.props.comment.created_at.split("-")[2].slice(0, 2)}/{this.props.comment.created_at.split("-")[0]}</p>
                        </div>
                        <div className='delete-edit-buttons'>
                            <div className="edit-comment">
                                {editCom}
                            </div>
                            <div className="delete-comment">
                                {delCom}
                            </div>
                        </div>
                    </div>
                    <div className='comment-item'>
                        {com}
                    </div>
                </div>
            )

        } else {
            return null
        }
    }

}

export default CommentIndexItem;