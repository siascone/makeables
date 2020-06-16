import React from 'react';
const CommentIndexItem = props => {
    
    
    if (props.comment.project_id === props.project_id) {
        return (
            <div classname='comment-box'>
                <div className='comment-item'>
                    <p>{props.comment.body}</p>
                    {/* <p>{props.user.username}</p> */}
                </div>
            </div>
        )

    }
    
}

export default CommentIndexItem;