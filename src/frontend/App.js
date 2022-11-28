import React, {useEffect,useState} from "react";
import { BrowserRouter } from "react-router-dom";
import "./App.css";
import Home from "./Home";
import NavBar from "./navbar/NavBar";
import { Route, Switch } from "react-router-dom";
import Murals from "./murals/Murals";
import MuralSuggest from "./murals/MuralSuggest";
import AdminMurals from "./murals/AdminMurals";
import SignupForm from "./SignupForm";
import sfMuralsApi from "../frontend/api";
import LoginForm from "./LogInForm";
import ProfileEditForm from "./Profile";
import jwt from "jsonwebtoken";
import CurrentUserContext from "./CurrentUserContext";
import useLocalStorage from "./hooks/useLocalStorage";
import "bootstrap/dist/css/bootstrap.min.css";


export const TOKEN_STORAGE_ID = "jobly-token";


function App() {

  const [currentUser, setCurrentUser] = useState("");
  const [token, setToken] = useLocalStorage(TOKEN_STORAGE_ID);

useEffect(() => {
  if(token && token.token){
    let info = jwt.decode(token.token)
    sfMuralsApi.token = token.token
    getUser(info.username);
    

  }

}
, [token]);

  async function register (values){
  let new_token = await sfMuralsApi.register(values);
  setToken(new_token)

}
async function login (values){
    let res = await sfMuralsApi.login(values);
    setToken(res)
    
}
async function getUser(username){
  let user = await sfMuralsApi.getUser(username);
  setCurrentUser(user)
  // setApplicationIds(new Set(user.user.applications))
}

function logout() {
  
  setCurrentUser(null);
  setToken(null);
  
}
async function suggest (values){
  let mural = await sfMuralsApi.suggest(values);
  

}
const [suggestedMurals, setSuggestedMurals] = useState([]);



useEffect(() => {


    async function getMurals() {
        try {
            let murals = await sfMuralsApi.getSuggestedMurals();
            
            setSuggestedMurals(murals);    
        } catch (error) {
            console.log(error)
            
        }

        
    
    }
    getMurals();

  }, []);


  return (
    <div className="App">
      <BrowserRouter>
      <CurrentUserContext.Provider value={{currentUser}}>
        <NavBar logout={logout} suggestedMurals={suggestedMurals}/>
        <main>
          <Switch>
            <Route exact path="/">
              <Home />
            </Route>
             <Route exact path="/murals">
               <Murals />
            </Route>
            <Route exact path="/profile">
              <ProfileEditForm />
            </Route>
            <Route exact path="/signup">
              <SignupForm register={register}/>
            </Route>
            <Route exact path="/muralSuggest">
              <MuralSuggest suggest={suggest}/>
            </Route>
            <Route exact path="/login">
              <LoginForm login={login}/>
            </Route>
            <Route exact path="/adminMurals" >
              <AdminMurals suggestedMurals={suggestedMurals} setSuggestedMurals={setSuggestedMurals}/>
            </Route>
            
            <Route>
              <p>Hmmm. I can't seem to find what you want.</p>
            </Route>
          </Switch>
        </main>
        </CurrentUserContext.Provider>
      </BrowserRouter>
    </div>
  );
}

export default App;