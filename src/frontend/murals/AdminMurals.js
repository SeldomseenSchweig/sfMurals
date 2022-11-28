import React, {useState, useEffect,useContext } from 'react'
import { Redirect } from 'react-router-dom';
import CurrentUserContext from "../CurrentUserContext";
import ReactPaginate from 'react-paginate';
import "./Murals.css";



import SearchBar from '../SearchBar';
import AdminMuralCard from './AdminMuralCard';


const AdminMurals = ({suggestedMurals, setSuggestedMurals}) => {

    const {currentUser} = useContext(CurrentUserContext)
    
    if(!currentUser || !currentUser.user.isAdmin){
        return <Redirect to="/"/>
    }



        const[pageNumber, setPageNumber] = useState(0)
        const muralsPerPage = 3;
        const pagesVisited = pageNumber * muralsPerPage
        
        const displayMurals = suggestedMurals.slice(pagesVisited, pagesVisited + muralsPerPage)
        const pageCount = Math.ceil(suggestedMurals.length/muralsPerPage)
        const changePage = ({selected}) =>{
            setPageNumber(selected)

        }



    return (

        <>
        <SearchBar  />
        <div className='flex-parent' >
            
                                 
                        {displayMurals.map(mural => (
                            
                               <div className='flex-child'> 
                                   <AdminMuralCard values={{
                                muralAddress:mural.street_address,
                                artist:mural.artist,
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

export default AdminMurals;