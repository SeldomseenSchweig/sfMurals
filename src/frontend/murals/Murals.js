import React, {useState, useEffect,useContext } from 'react'
import { Redirect } from 'react-router-dom';
import CurrentUserContext from "../CurrentUserContext";


import SearchBar from '../SearchBar';
import MuralCard from './MuralCard';
import sfMuralsApi from '../api';





const Murals = () => {

    const {currentUser} = useContext(CurrentUserContext)
    


  


    
    if(!currentUser){
        return <Redirect to="/"/>
    }
    const [murals, setMurals] = useState([]);


    useEffect(() => {

        async function getMurals() {
            try {
                let murals = await sfMuralsApi.getMurals();
                
                setMurals(murals);    
            } catch (error) {
                console.log(error)
                
            }

            
        
        }
        getMurals();

      }, []);

    async function search(artist) {
        let murals = await sfMuralsApi.getmurals();
        setMurals(murals);
        }
        console.log(murals)


    return (

        
        <div>
            <SearchBar search={search} />
            {murals.map(mural => (
            
                
                <MuralCard values={{
                    
                    muralAddress:mural.street_address,
                    artist:mural.artist,
                    year:mural.year,
                    neighborhood:mural.neighborhood  }}/>
                
            ))}
            </div>


        )
            
} 

export default Murals;