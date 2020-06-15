import React from 'react';
const CommentIndexItem = props => {
    return (
        <div classname='comment-index-individual'>
            <div className='comment-index-details'>
                <p>{props.comment.body}</p>
                <p>{props.user.username}</p>
            </div>
        </div>
    )
}

export default CommentIndexItem;