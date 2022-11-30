import React, {useState,useContext } from 'react'
import { Redirect } from 'react-router-dom';
import CurrentUserContext from "../CurrentUserContext";
import ReactPaginate from 'react-paginate';
import "./Murals.css";



import SearchBar from '../SearchBar';
import MuralCard from './MuralCard';
import sfMuralsApi from '../api';





const Murals = (values) => {

    const {currentUser} = useContext(CurrentUserContext)
    
    if(!currentUser){
        return <Redirect to="/"/>
    }
    
let murals = values.values.murals ;
let setMurals = values.values.setMurals;




    async function search(value) {
        let murals = await sfMuralsApi.getMurals(value);
        setMurals(murals);
        }

        const[pageNumber, setPageNumber] = useState(0)
        const muralsPerPage = 3;
        const pagesVisited = pageNumber * muralsPerPage
        
        const displayMurals = murals.slice(pagesVisited, pagesVisited + muralsPerPage)
        const pageCount = Math.ceil(murals.length/muralsPerPage)
        const changePage = ({selected}) =>{
            setPageNumber(selected)

        }



    return (

        <>
        <SearchBar search={search} />
        <div  className='flex-parent' >
            
                                 
                        {displayMurals.map(mural => (
                            
                               <div key={mural.id} className='flex-child'> 
                                   <MuralCard  values={{
                                muralAddress:mural.street_address,
                                artist:mural.artist,
                                year:mural.year,
                                neighborhood:mural.neighborhood,
                                img:mural.img
                                 }}/>
                                </div>

                            ))}

            </div>

            <div>
            <ReactPaginate
                previousLabel={"Previous"}
                nextLabel={"Next"}
                pageCount={pageCount}
                onPageChange={changePage}
                containerClassName={"paginationBttns"}
                previousLinkClassName={"previousBttn"}
                nextLinkClassName={"nextBttn"}
                disabledLinkClassName={"paginationDisabled"}
                activeClassName={"paginationActive"}
            />

            </div>



            </>

        )
            
} 

export default Murals;