"use strict";

const db = require("../db");
const {
    NotFoundError,
    BadRequestError,
    UnauthorizedError,
  } = require("../expressError");


  class Mural{

    static async create({ artist, street_address, year, cultural_district }) {
    
        const result = await db.query(
              `INSERT INTO murals
               (artist, street_address, year, neighborhood, cultural_distric, long, lat)
               VALUES ($1, $2, $3, $4, $5)
               RETURNING artist, street_address, year, neighborhood, cultural_district, long, lat`,
            [
              artist,
              street_address,
              year,
              neighborhood,
              cultural_district,
              long,
              lat
            ],
        );
        const mural = result.rows[0];
    
        return mural;
      }
    
      /** Find all companies (optional filter on searchFilters).
       *
       * searchFilters (all optional):
       * - minEmployees
       * - maxEmployees
       * - street_address (will find case-insensitive, partial matches)
       *
       * Returns [{ artist, street_address, year, numEmployees, cultural_district }, ...]
       * */
    
      static async findAll() {
        let query = `SELECT artist,
                            street_address,
                            year, neighborhood,
                            cultural_district
                     FROM murals 
                     ORDER BY artist`;
  
        // Finalize query and return results
          
         
        const muralsRes = await db.query(query);
        console.log(muralsRes);
        return muralsRes.rows;
      }
    
      /** Given a company artist, return data about company.
       *
       * Returns { artist, street_address, year, numEmployees, cultural_district, jobs }
       *   where jobs is [{ id, title, salary, equity }, ...]
       *
       * Throws NotFoundError if not found.
       **/
    
      static async get(artist) {
        const muralRes = await db.query(
            `SELECT
                    street_address,
                    year, neighborhood,
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
