export const fetchAllProjects = () => (
    $.ajax({
        url: '/api/projects',
        method: 'GET'
    })
);



export const createProject = (project) => (
    $.ajax({
        url: '/api/projects',
        method: 'POST',
        data: { project }
    })
);

export const deleteProject = (projectId) => (
    $.ajax({
        url: `/api/projects/${projectId}`,
        method: 'DELETE',
        data: {projectId}
    })
);