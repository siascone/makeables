export const fetchAllComments = (projectId) => (
    $.ajax({
        url: `/api/projects/${projectId}/comments`,
        method: 'GET'
    })
);

export const fetchComment = (commentId) => (
    $.ajax({
        url: `/api/projects/:project_id/comments/${commentId}`,
        method: 'GET',
        data: { commentId }
    })
);

export const createComment = (comment) => {
    return(
        $.ajax({
            url: '/api/projects/:project_id/comments',
            method: 'POST',
            data: { comment },
        })
    )
};

export const updateComment = (comment, info) => {
    return (
        $.ajax({
            url: `/api/projects/${info.projectId}/comments/${info.id}`,
            method: 'PATCH',
            data: { comment }
        })
    )
}

export const deleteComment = (commentId) => {
    return (
        $.ajax({
            url: `/api/projects/:project_id/comments/${commentId}`,
            method: 'DELETE',
            data: { commentId }
        })
    )
};