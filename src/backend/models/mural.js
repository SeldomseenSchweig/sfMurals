"use strict";

const db = require("../db");
const {
    NotFoundError,
    BadRequestError,
    UnauthorizedError,
  } = require("../expressError");


  class Mural{

    static async create({ artist, street_address,neighborhood='', cultural_district='', long, lat,img}) {
    
        const result = await db.query(
              `INSERT INTO murals
               (artist, street_address, neighborhood, cultural_district, long, lat,img)
               VALUES ($1, $2, $3, $4, $5)
               RETURNING artist, street_address, year, neighborhood, cultural_district, long, lat, img`,
            [
              artist,
              street_address,
              year,
              neighborhood,
              cultural_district,
              long,
              lat,
              img
            ],
        );
        const mural = result.rows[0];
    
        return mural;
      }
      static async suggest({ artist, street_address, img, user_id}) {
        console.log(artist, street_address, img,user_id)
    
        const result = await db.query(
              `INSERT INTO suggestedMurals
               (artist, street_address,img,user_id)
               VALUES ($1, $2, $3,$4)
               RETURNING artist, street_address,img,user_id`,
            [
              artist,
              street_address,
              img,
              user_id
            ],
        );
        const mural = result.rows[0];
    
        return mural;
      }

      static async findSuggestedMurals() {
        let query = `SELECT artist,
                            street_address,
                            img,
                            user_id
                     FROM suggestedMurals 
                     ORDER BY artist`;
  
        // Finalize query and return results
          
         
        const muralsRes = await db.query(query);
        return muralsRes.rows;
      }


    
      /** Find all Murals (optional filter on searchFilters).
       *
       * searchFilters (all optional):
       * - street_address (will find case-insensitive, partial matches)
       *
       * Returns [{ artist, street_address, year, numEmployees, cultural_district }, ...]
       * */
    
      static async findAll() {
        let query = `SELECT artist,
                            street_address,
                            year, neighborhood,
                            cultural_district,
                            img
                     FROM murals 
                     ORDER BY artist`;
  
        // Finalize query and return results
          
         
        const muralsRes = await db.query(query);
        return muralsRes.rows;
      }
    
      /** Given a street address, return data murals at that address.
       *
       * Returns { artist, street_address, year, cultural_district, jobs }
       *   where jobs is [{ id, title, salary, equity }, ...]
       *
       * Throws NotFoundError if not found.
       **/
    
      static async get(artist) {
        const muralRes = await db.query(
            `SELECT
                    street_address,
                    year, 
                    neighborhood,
                    cultural_district
            FROM murals"
            WHERE artist = $1`,
            [artist]);
    
        const mural = muralRes.rows[0];
    
        if (!mural) throw new NotFoundError(`No murals by ${artist}`);
    
    
        return mural;
      }



  }

  module.exports = Mural;
