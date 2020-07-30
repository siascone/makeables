export const fetchAllSteps = (projectId) => {
    return(
        $.ajax({
            url: `/api/projects/${projectId}/project_steps`,
            method: 'GET'
        })

    )
};

export const fetchStep = (stepId) => (
    $.ajax({
        url: `/api/projects/:project_id/project_steps/${stepId}`,
        method: 'GET',
        data: { stepId }
    })
);

export const createStep = (step) => {
    return(
        $.ajax({
            url: '/api/projects/:project_id/project_steps',
            method: 'POST',
            data: { step }
        })
    )
};

export const updateStep = (step, projectId) => {
    return (
        $.ajax({
            url: `/api/projects/${projectId}/project_steps/${step.id}`,
            method: 'PATCH',
            data: { step }
        })
    )
};

export const deleteStep = (stepId) => {
    return (
        $.ajax({
            url: `/api/projects/:project_id/project_steps/${stepId}`,
            method: 'DELETE',
            data: { stepId }
        })
    )
};