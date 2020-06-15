export const fetchAllComments = () => (
    $.ajax({
        url: '/api/comments',
        method: 'GET'
    })
);

export const fetchComment = (commentId) => (
    $.ajax({
        url: `/api/comments/${commentId}`,
        method: 'GET',
        data: { commentId }
    })
);

export const createComment = (comment) => {
    return(
        $.ajax({
            url: '/api/comments',
            method: 'POST',
            data: { comment },
        })
    )
};

export const deleteComment = (commentId) => (
    $.ajax({
        url: `/api/comments/${commentId}`,
        method: 'DELETE',
        data: { commentId }
    })
);