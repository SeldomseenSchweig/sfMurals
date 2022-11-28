import React, {useState, useEffect,useContext } from 'react'
import { Redirect } from 'react-router-dom';
import CurrentUserContext from "../CurrentUserContext";
import ReactPaginate from 'react-paginate';
import "./Murals.css";



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

    async function search() {
        let murals = await sfMuralsApi.getmurals();
        setMurals(murals);
        }

        const[pageNumber, setPageNumber] = useState(0)
        const muralsPerPage = 3;
        const pagesVisited = pageNumber * muralsPerPage
        
        const displayMurals = murals.slice(pagesVisited, pagesVisited + muralsPerPage)
        console.log(displayMurals)
        const pageCount = Math.ceil(murals.length/muralsPerPage)
        const changePage = ({selected}) =>{
            setPageNumber(selected)

        }



    return (

        <>
        <SearchBar search={search} />
        <div className='flex-parent' >
            
                                 
                        {displayMurals.map(mural => (
                            
                               <div className='flex-child'> 
                                   <MuralCard values={{
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