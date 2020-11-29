const express 	= require('express');
const userModel = require.main.require('./models/CustomerModel');
const router 	= express.Router();


router.get('*',  (req, res, next)=>{
	if(req.cookies['username'] == null)
	{		
	res.redirect('/login');			
	}
	else{		
		next();			
	}		
});
router.get('/', (req, res)=>{
	s=req.cookies['username'];
	res.render('customer/customerhome/customerhome',{name: s});	
})

router.get('/userlist', (req, res)=>{
	var user="user";
	userModel.getAll(user,function(results)
	{
	   res.render('custome/customerhome/userlist', {users: results});
	});
})

router.get('/searchuser', (req, res) => {
    res.render('custome/customerhome/searchuser');
});


router.post('/searchuser', (req, res) => {
    userModel.search(req.body.search, (result) => {
        res.json({
            results: result
        });
    });
});



   

router.get('/profile', (req, res)=>{

	var user= req.cookies['username'];
	console.log(user);
	userModel.getAll2(user,function(results)
	{
	   res.render('customer/customerhome/profile', {users: results});
	});
})
router.get('/transaction', (req, res)=>{
	var user= req.cookies['username']
	console.log(user)
    userModel.transaction(user, (result) => {
		res.json(result)
	})


})


router.get('/medicinelist', (req, res)=>{
	var user="user";
	userModel.getAll11(user,function(results)
	{
	   res.render('customer/customerhome/medicinelist', {users: results});
	});
})

module.exports = router; 