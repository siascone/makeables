export const fetchAllSteps = () => (
    $.ajax({
        url: '/api/project_steps',
        method: 'GET'
    })
);

export const fecthStep = (stepId) => (
    $.ajax({
        url: `/api/steps/${stepId}`,
        method: 'GET',
        data: { stepId }
    })
);

export const createStep = (step) => {
    return(
        $.ajax({
            url: '/api/project_steps',
            method: 'POST',
            data: { step }
        })
    )
};

export const updateStep = (step) => (
    $.ajax({
        url: `/api/project_steps/${step.id}`,
        method: 'PATCH',
        data: { step }
    })
);

export const deleteStep = (stepId) => {
    $.ajax({
        url: `/api/project_steps/${stepId}`,
        method: 'DELETE',
        data: { stepId }
    })
};