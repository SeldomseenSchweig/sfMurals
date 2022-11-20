import axios from "axios";
import { apiKey } from "../apiKey";

const BASE_URL = process.env.REACT_APP_BASE_URL || "http://localhost:3001";
const MURAL_URL = `https://data.sfgov.org/resource/wg8w-68vc.json?`


/** API Class.
 *
 * Static class tying together methods used to get/send to to the API.
 * There shouldn't be any frontend-specific stuff here, and there shouldn't
 * be any API-aware stuff elsewhere in the frontend.
 *
 */

class sfMuralsApi {
  // the token for interactive with the API will be stored here.
  //There are three routes, to the database, the SF Mural API and the Googles maps API
  static token;

  static async userRequest(endpoint, data = {}, method = "get") {
    console.debug("API Call:", endpoint, data, method);

    //there are multiple ways to pass an authorization token, this is how you pass it in the header.
    //this has been provided to show you another way to pass the token. you are only expected to read this code for this project.
    const url = `${BASE_URL}/${endpoint}`;
    const headers = { Authorization: `Bearer ${sfMuralsApi.token}` };
    const params = (method === "get")
        ? data
        : {};

    try {
      return (await axios({ url, method, data, params, headers })).data;
    } catch (err) {
      console.error("API Error:", err.response);
      let message = err.response.data.error.message;
      throw Array.isArray(message) ? message : [message];
    }
  }
  static async muralRequest(endpoint, data = {}, method = "get") {
    console.debug("API Call:", endpoint, data, method);

    //there are multiple ways to pass an authorization token, this is how you pass it in the header.
    //this has been provided to show you another way to pass the token. you are only expected to read this code for this project.
    const url = `${MURAL_URL}`;
    const params = (method === "get")
        ? data
        : {};

    try {
      return (await axios({ url, method, data, params })).data;
    } catch (err) {
      console.error("API Error:", err.response);
      let message = err.response.data.error.message;
      throw Array.isArray(message) ? message : [message];
    }
  }

  // Individual API routes

  /** Get details on a company by handle. */



  /** Get details on a all jobs. */

    static async getMurals(filter){
      let data = {}
      if (filter){
        data = {title:filter}
      }
    let res = await this.muralRequest();
    return res;
  }
    /**register website */

  static async register(values){
    
    let data = {
      username:values.username,
      password:values.password,
      firstName:values.firstName,
      lastName:values.lastName,
      email:values.email
    }

    let res = this.userRequest('auth/register', data, 'post' )
  return res  }

    /** login. */

  static async login({username,password}){
    

    let data = {
      username:username,
      password:password,
    }
    
      let res = this.userRequest('auth/token', data, 'post' )
      
      return res
      
  }

  static async getUser(testuser){

    let res = this.userRequest(`users/${testuser}`)

    return res

  }


  static async apply(values){
    console.log(values)
    const {username, jobId} = values;
    const data = {username:username, id:jobId}

    let res = this.userRequest(`users/${username}/jobs/${jobId}`, data, 'post')
    return res

  }
 
  static async update (username,data){
   

  
    let res = this.userRequest(`users/${username}`, data, 'patch')
    console.log(res)
    return res.user



  }


}
// for now, put token ("testuser" / "password" on class)



export default sfMuralsApi;