"use strict";

const db = require("../db");
const {
    NotFoundError,
    BadRequestError,
    UnauthorizedError,
  } = require("../expressError");


  class Mural{

    static async create({ artist, street_address,year='',neighborhood='', cultural_district='', long=0, lat=0,img}) {

    
        const result = await db.query(
              `INSERT INTO murals
               (artist, street_address,year,neighborhood, cultural_district, long, lat,img)
               VALUES ($1, $2, $3,$4,$5,$6,$7,$8)
               RETURNING id, artist, street_address, year, neighborhood, cultural_district, long, lat, img`,
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
        let query = `SELECT 
                            id,
                            artist,
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
    
      static async findAll(searchFilters = {}) {
        let query = `SELECT artist,
                            street_address,
                            year, 
                            neighborhood,
                            cultural_district,
                            long,
                            lat,
                            img
                     FROM murals`;
  
        // Finalize query and return results

    let whereExpressions = '';
    let queryValues = [];

    const {street_address} = searchFilters;
    if (street_address) {
      queryValues.push(`%${street_address}%`);
      whereExpressions += (` WHERE street_address ILIKE $${queryValues.length}`);
    }
    if (whereExpressions.length > 0) {
      query += whereExpressions;
      
    }else{
      query+=' ORDER BY artist'
    }
          
         
        const muralsRes = await db.query(query, queryValues);
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


      static async deny(id){
        console.log(id)

        const result = await db.query(
          `DELETE
           FROM suggestedMurals
           WHERE id = $1
           RETURNING id`, [id]);
    const mural = result.rows[0];

    if (!mural) throw new NotFoundError(`No Mural: ${mural}`);
  }




  }

  module.exports = Mural;
