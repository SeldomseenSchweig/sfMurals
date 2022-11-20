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
                            
                                <CardText> Equity: {values.artist}</CardText>
                            

                                <CardText> Year Painted {values.year} </CardText>
                                
                                
                            </CardBody>
                            <form onSubmit={handleSubmit}>
                          
                            </form>
                            
                            </Card>



            )
        }
    

        export default MuralCard;