"use strict";

/** Routes for mural. */

const jsonschema = require("jsonschema");

const express = require("express");
const { ensureCorrectUserOrAdmin, ensureAdmin, ensureLoggedIn } = require("../middleware/auth");
const { BadRequestError } = require("../expressError");
const Mural = require("../models/mural");
const muralNewSchema = require("../schemas/muralNew.json");


const router = express.Router();




router.post("/", ensureAdmin, async function (req, res, next) {
    try {
      console.log(req.body);
      const validator = jsonschema.validate(req.body, muralNewSchema);
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
  router.post("/muralSuggest", ensureLoggedIn, async function (req, res, next) {
    try {
      const validator = jsonschema.validate(req.body, muralNewSchema);
      if (!validator.valid) {
        const errs = validator.errors.map(e => e.stack);
        throw new BadRequestError(errs);
      }
      console.log("muralsuggest")
  
      const mural = await Mural.suggest(req.body);
      
      return res.status(201).json({ mural });
    } catch (err) {
      return next(err);
    }
  });

  router.get("/adminMurals",ensureAdmin, async function (req, res, next) {

    try {
      const murals = await Mural.findSuggestedMurals();
      return res.json( murals );
    } catch (err) {
      return next(err);
    }
  });
  
  
  /** GET / => { murals: [ {artist, street_address, neighborhood, date }, ... ] }
   *
   * Returns list of all users.
   *
   * Authorization required: admin
   **/
  
  router.get("/", async function (req, res, next) {

    try {
      const q = req.query;
      const murals = await Mural.findAll(q);
      return res.json( murals );
    } catch (err) {
      return next(err);
    }
  });

  router.delete("/:id", ensureAdmin, async function (req, res, next) {
    try {
      await Mural.deny(req.params.id);
      return res.json({ deleted: +req.params.id });
    } catch (err) {
      return next(err);
    }
  });


  module.exports = router;




  