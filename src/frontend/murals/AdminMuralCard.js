import React from 'react'
import { 
    Card, 
    CardHeader, 
    CardBody, 
    CardText 
} from 'reactstrap';



const AdminMuralCard = ({values}) =>{


    


    

    const handleSubmit = (e) =>{
        e.preventDefault();
        console.log('hello')
    }


            return(

                < Card 
                                className="my-2"
                                color="primary"
                                outline
                                style={{
                                color:"red" ,
                                borderColor:"black",
                                borderWidth:"medium",
                                borderStyle:'solid',
                                width: "50%",
                                margin:" 10px "}}>
                            <CardHeader>
                                {values.title}     

                            </CardHeader>
                            <CardBody>
                            
                                <CardText> Artist {values.artist}</CardText>
                                <CardText> Address {values.muralAddress} </CardText>
                                <img src={values.img} style={{maxWidth:'100%'}}/>


                                
                                
                            </CardBody>
                            <form onSubmit={handleSubmit}>
                          
                            </form>
                            
                            </Card>



            )
        }
    

        export default AdminMuralCard;