export const fetchAllSteps = () => (
    $.ajax({
        url: '/api/projects',
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
            url: '/api/steps',
            method: 'POST',
            data: { step }
        })
    )
};

export const updateStep = (step) => (
    $.ajax({
        url: `/api/steps/${step.id}`,
        method: 'PATCH',
        data: { step }
    })
);

export const deleteStep = (stepId) => {
    $.ajax({
        url: `/api/steps/${stepId}`,
        method: 'DELETE',
        data: { stepId }
    })
};