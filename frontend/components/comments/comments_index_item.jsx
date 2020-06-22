import React from 'react';

const CommentIndexItem = props => {
    let delCom
    if (props.comment.user_id === props.sessionId) {
        delCom = <button 
                    >
                    Delete
                </button>
    }

    if (props.comment.project_id === props.projectId) {
        return (
            <div className='comment-box'>
                <div className='comment-item'>
                    <p>Comment by: {props.comment.username}</p>
                    <p>{props.comment.body}</p>
                    {delCom}
                </div>
            </div>
        )

    } else {
        return null
    }
};

export default CommentIndexItem;