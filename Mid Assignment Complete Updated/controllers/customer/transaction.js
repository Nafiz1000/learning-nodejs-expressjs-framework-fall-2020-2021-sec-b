const express = require('express');
const um = require.main.require('./models/AdminModel');

const router = express.Router();

router.get('/',(req,res)=>
{
    res.render('./customer/transaction');
})

module.exports = router;