import React from 'react';

const CommentIndexItem = props => {

    if (props.comment.project_id === props.projectId) {
        debugger
        return (
            <div classname='comment-box'>
                <div className='comment-item'>
                    <p>Comment by: {props.comment.username}</p>
                    <p>{props.comment.body}</p>
                </div>
            </div>
        )

    } else {
        return null
    }
    
};

export default CommentIndexItem;