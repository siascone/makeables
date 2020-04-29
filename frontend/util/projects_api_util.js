export const fetchAllProjects = () => (
    $.ajax({
        url: '/api/projects',
        method: 'GET'
    })
);

export const fetchProject = (projectId) => (
    $.ajax({
        url: `/api/projects/${projectId}`,
        method: 'GET',
        data: { projectId }
    })
)

export const createProject = (project) => {
    return(
        $.ajax({
            url: '/api/projects',
            method: 'POST',
            data: project, 
            contentType: false,
            processData: false
        })
    )
};

export const updateProject = (payload) => {
    debugger
    return (
        $.ajax({
            url: `/api/projects/${payload.project.id}`,
            method: "PATCH",
            data: payload
        })

    )
}

export const deleteProject = (projectId) => (
    $.ajax({
        url: `/api/projects/${projectId}`,
        method: 'DELETE',
        data: {projectId}
    })
);