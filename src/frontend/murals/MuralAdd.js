import React, {useState} from 'react';





const MuralAdd =({addItem})=>{
    const INITIAL_STATE = {
        artst:"",
        address:"",
        neigborhood:"",
        img:""
    }
    const [formData, setFormData] = useState([INITIAL_STATE])
    const handleChange = (e) =>{

        const {name,value} = e.target;
        setFormData(formData =>( {
            ...formData,
            [name]:value
         }))
    }
    const handleSubmit =(e) =>{
        e.preventDefault();
        addItem({ ...formData });
        setFormData(INITIAL_STATE)

    } 


    return (

        <form onSubmit={handleSubmit} >
            <label htmlFor='artist'> Artist Name</label>
            <input 
            id='artist'
            name='artist'
            type='text'
            placeholder='Artist Name'
            value={formData.artist}
            onChange={handleChange}
            />
            <label htmlFor='address'> Address </label>
            <input 
            type="text"
            name='address'
            onChange={handleChange}
            value={formData.address}
            id="address"

            />

            <label htmlFor='neighborhood'> Neighborhood </label>
            <input 
            type="text"
            name='neighborhood'
            onChange={handleChange}
            value={formData.neighborhood}
            id="neighborhood"

            />
            <label htmlFor='Image'> Image </label>
            <input 
            type="file"
            name='image'
            onChange={handleChange}
            value={formData.image}
            id="image"

            />
          <button>Submit</button>  
        </form>
    )



}

export default MuralAdd;