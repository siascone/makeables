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

export const updateProject = (formData, projectId) => {
    return (
        $.ajax({
            url: `/api/projects/${projectId}`,
            method: "PATCH",
            data: formData,
            processData: false,
            contentType: false,
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