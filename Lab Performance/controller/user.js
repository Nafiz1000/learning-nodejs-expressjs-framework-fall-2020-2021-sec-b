const express = require('express');
const userModel	= require.main.require('./models/userModel');
const router = express.Router();

router.get('*',  (req, res, next)=>{
	if(req.cookies['username'] == null){
		res.redirect('/login');
	}else{
		next();
	}
});

router.get('/create', (req, res)=>{
	res.render('user/create'); 
})

router.post('/create', (req, res)=>{

	var user = {
		username: 	req.body.username,
		password: 	req.body.password,
		Type	: 	req.body.Type
	};

	userModel.insert(user, function(status){
		 if(status){
    
            console.log("Created");
            res.redirect('/home/userlist');
          
        }
        else{
              console.log("Error");  
        }
	});
});

router.get('/edit/:id', (req, res)=>{

 userModel.getById(req.params.id, (result) => {
        res.render('user/edit', { user: result[0] });
    });
       
});

router.post('/edit/:id', (req, res)=>{

    var user = {
        id: req.params.id,
        username: req.body.username,
		password: req.body.password,
		Type:     req.body.Type,
	};
    userModel.update(user, function(status){

        if(status){
    
            console.log("Updated");
            res.redirect('/home/userlist');
          
        }
        else{
              console.log("Error");  
        }
});
})

router.get('/delete/:id', (req, res)=>{
    var user = {
		id: req.params.id
	};
    
	res.render('user/delete',user);
});

router.post('/delete/:id', (req, res)=>{
    var user = {
        id: req.params.id
      
	};
    userModel.delete(user, function(status){

        if(status){
    
            console.log("deleted");
            res.redirect('/home/userlist');
          
        }
        else{
              console.log("Error");  
        }
});
})

module.exports = router;


//validation -> express-validator (https://www.npmjs.com/package/express-validator)
//file upload -> express-fileupload (https://www.npmjs.com/package/express-fileupload)
