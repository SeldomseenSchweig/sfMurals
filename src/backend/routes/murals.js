"use strict";

/** Routes for mural. */

const jsonschema = require("jsonschema");

const express = require("express");
const { ensureCorrectUserOrAdmin, ensureAdmin } = require("../middleware/auth");
const { BadRequestError } = require("../expressError");
const Mural = require("../models/mural");

const router = express.Router();




router.post("/", ensureAdmin, async function (req, res, next) {
    try {
      const validator = jsonschema.validate(req.body, userNewSchema);
      if (!validator.valid) {
        const errs = validator.errors.map(e => e.stack);
        throw new BadRequestError(errs);
      }
  
      const mural = await Mural.create(req.body);
      
      return res.status(201).json({ mural });
    } catch (err) {
      return next(err);
    }
  });
  
  
  /** GET / => { users: [ {username, firstName, lastName, email }, ... ] }
   *
   * Returns list of all users.
   *
   * Authorization required: admin
   **/
  
  router.get("/", async function (req, res, next) {

    try {
      const murals = await Mural.findAll();
      return res.json( murals );
    } catch (err) {
      return next(err);
    }
  });


  module.exports = router;




  