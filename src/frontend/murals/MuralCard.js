import React from 'react'
import { 
    Card, 
    CardHeader, 
    CardBody, 
    CardText 
} from 'reactstrap';



const MuralCard = ({values}) =>{


    


    

    const handleSubmit = (e) =>{
        e.preventDefault();
        console.log('hello')
    }


            return(
                <div className='flip-card' >
                < div 
                                className="my-2 flip-card-inner "
                                
                                outline
                                style={{
                                
                                margin:" 10px "}}>

                            <CardBody className='flip-card-back'>
                            
                                <CardText> Artist {values.artist}</CardText>
                            

                                <CardText> Year Painted {values.year} </CardText>
                                <CardText> Address {values.muralAddress} </CardText>
                                <CardText> Neighborhood {values.neighborhood} </CardText>
                               


                                
                                
                            </CardBody>
                          
                            <CardBody className='flip-card-front'>
                            <img alt={`Mural by ${values.artist}`} src={values.img} style={{maxWidth:'100%'}}/>

                            </CardBody>
                            </div>
            </div>

                            



            )
        }
    

        export default MuralCard;



       