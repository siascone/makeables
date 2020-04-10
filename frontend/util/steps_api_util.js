export const fetchAllSteps = (projectId) => (
    $.ajax({
        url: `/api/projects/${projectId}/steps`,
        method: 'GET'
    })
);

export const fecthStep = (stepId) => (
    $.ajax({
        url: `/api/projects/:project_id/steps/${stepId}`,
        method: 'GET',
        data: { stepId }
    })
);

export const createStep = (step) => {
    return(
        $.ajax({
            url: '/api/projects/:project_id/steps',
            method: 'POST',
            data: { step }
        })
    )
};

export const updateStep = (step, info) => (
    $.ajax({
        url: `/api/projecs/${info.projectId}/steps/${info.id}`,
        method: 'PATCH',
        data: { step }
    })
);

export const deleteStep = (stepId) => {
    $.ajax({
        url: `/api/projects/:project_id/steps/${stepId}`,
        method: 'DELETE',
        data: { stepId }
    })
};