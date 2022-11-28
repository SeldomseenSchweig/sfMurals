import React, {useState, useContext} from 'react';
import CurrentUserContext from "../CurrentUserContext";
import { Redirect } from 'react-router-dom';






const MuralSuggest =({suggest})=>{

    const {currentUser} = useContext(CurrentUserContext)    
    if(!currentUser){
        return <Redirect to="/"/>
    }
    const INITIAL_STATE = {
        artst:"",
        street_address:"",
        img:"",
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
        formData.user_id = currentUser.user.username
        // console.log(currentUser.user.username)
        console.log(formData)

        suggest(formData)
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
            <label htmlFor='street_address'> Address </label>
            <input 
            type="text"
            name='street_address'
            onChange={handleChange}
            value={formData.street_address}
            id="street_address"

            />

            <label htmlFor='img'> Image </label>
            <input 
            type="text"
            name='img'
            onChange={handleChange}
            value={formData.img}
            id="img"

            />
          <button>Submit</button>  
        </form>
    )



}

export default MuralSuggest;