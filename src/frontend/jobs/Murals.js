import React, {useState, useEffect,useContext } from 'react'
import murallyApi from '../api'
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
                let murals = await sfMuralsApi.getmurals();
                setmurals(murals);    
            } catch (error) {
                console.log(error)
                
            }

            
        
        }
        getmurals();

      }, []);

    let muralList = Object.values(murals)
    async function search(name) {
        let murals = await murallyApi.getmurals(name);
        setMurals(murals);
        }




    return (

        
        <div>
            <SearchBar search={search} />
            { muralList.map(mural => (
            
                
                <MuralCard values={{
                    id:mural.id,
                    muralAddress:mural.address,
                    artist:mural.artist,
                    year:mural.year,
                    neighborhood:mural.neighborhood  }}/>
                
            ))}
            </div>


        )
            
} 

export default Murals;