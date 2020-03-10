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

export const createProject = (project) => (
    $.ajax({
        url: '/api/projects',
        method: 'POST',
        data: { project }
    })
);

export const updateProject = (project) => (
    $.ajax({
        url: `/api/projects/${project.id}`,
        method: "PATCH",
        data: {project}
    })
)

export const deleteProject = (projectId) => (
    $.ajax({
        url: `/api/projects/${projectId}`,
        method: 'DELETE',
        data: {projectId}
    })
);