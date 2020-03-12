import React from 'react';

class ProjectForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = this.props.project;
        this.state["photoFile"] = null;
        this.cName = false;
        this.handleSubmit = this.handleSubmit.bind(this);
        this.previewFile = this.previewFile.bind(this);
        this.click = this.click.bind(this);
    }

    update(field) {
        return e => this.setState({[field]: e.currentTarget.value});
    }
    

    handleSubmit(e) {
        e.preventDefault();
        const formData = new FormData();
        formData.append('project[title]', localStorage.getItem('title'));
        localStorage.removeItem('title');
        if (this.state.photoFile) {
            formData.append('project[project_photo]', this.state.photoFile);
        }
        if (this.props.formType === 'Publish Makeable') {
            this.props.createProject(formData)
                // .then(this.props.history.push(`/projects`));
        } else {
            this.props.updateProject(formData)
                // .then(this.props.history.push(`/projects`));
        }
    }

    previewFile(e) {
        const file = e.currentTarget.files[0];
        const preview = document.querySelector('.img_preview');
        const reader = new FileReader();
        reader.onloadend = () => {
            preview.src = reader.result;
            this.setState({photoFile: file, photoUrl: reader.result});
        };

        if (file) {
            reader.readAsDataURL(file);
        } else {
            this.setState({ photoUrl: "", photoFile: null });
        }
    }

    click(e) {
        e.preventDefault();
        this.cName = !this.cName;
    }


    render() {

        return (
            <div className='project-main'>
                <div className='image-input'>
                    <div className='image-box'>
                        <div className='project-image'>
                            <img src=""
                                className='img_preview'
                            />
                        </div>
                        <label className="file-field-label">✚ Click to Add a Photo</label>
                        <input type="file"
                            className='file-field'
                            value={this.state.project_photo}
                            onChange={this.previewFile}
                        />
                    </div>
                </div>
                <div className='project-nav'>
                    <div></div>
                    <button
                        className='project-button'
                        onClick={this.handleSubmit}>
                        Publish
                    </button>
                </div>
                <div className='steps-box'>
                    ---steps component will go here---
                </div>
            </div>
        )
    }
}

export default ProjectForm;
