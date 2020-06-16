import React from 'react';

const CommentIndexItem = props => {
    if (props.comment.project_id === props.projectId) {
        return (
            <div classname='comment-box'>
                <div className='comment-item'>
                    <p>{props.comment.body}</p>
                </div>
            </div>
        )

    } else {
        return null
    }
    
};

export default CommentIndexItem;