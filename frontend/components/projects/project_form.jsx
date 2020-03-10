import React from 'react';
// import {FormData} from 'react-router-dom'

class ProjectForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = this.props.project;
        this.state["photoFile"] = null;

        this.handleSubmit = this.handleSubmit.bind(this);
        this.previewFile = this.previewFile.bind(this);
    }

    update(field) {
        return e => this.setState({[field]: e.currentTarget.value});
    }
    

    handleSubmit(e) {
        e.preventDefault();
        const formData = new FormData();
        formData.append('project[title]', this.state.title);
        formData.append('project[description]', this.state.description)
        if (this.state.photoFile) {
            formData.append('project[project_photo]', this.state.photoFile);
        }
        this.props.createProject(formData);
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


    render() {
        return (
            <div>
                <h2>{this.props.formType}</h2>
                <form>
                    <label>Project Title:
                        <input type="text"
                            placeholder="Project Title"
                            value={this.state.title}
                            onChange={this.update('title')}
                        />
                    </label>
                    <label>Project Description
                        <textarea
                            placeholder="Project Description"
                            value={this.state.description}
                            onChange={this.update('description')}
                        />
                    </label>
                    <label>Add a photo
                        <input type="file"
                            // placeholder="Add a Photo"
                            value={this.state.project_photo}
                            onChange={this.previewFile}

                        />
                        <img src="" height='200' alt="Image Preview" className='img_preview'/>
                    </label>
                    <button onClick={this.handleSubmit}>Publish Makeable</button>
                </form>
            </div>
        )
    }
}

export default ProjectForm;