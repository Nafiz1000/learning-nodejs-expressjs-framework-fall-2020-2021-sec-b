const express 	= require('express');
const userModel		= require.main.require('./models/CustomerModel');
const router 	= express.Router();
const { check, validationResult } = require('express-validator');

router.get('*',  (req, res, next)=>{
	 if(req.cookies['username'] == null){
		res.redirect('/login');
	}else{
		next();
	 }
}
);





router.get('/editprofile/:id', (req, res)=>{
   
    userModel.getById(req.params.id, (result) => {
        res.render('customer/user/editprofile', { user: result[0] });
    });
       
});

router.post('/editprofile/:id', (req, res)=>{
   
                var user = {
                    id: req.params.id,
                    name: req.body.name,
                    email: req.body.email,
                    contactno: req.body.contactno,
                    address: req.body.address,
                    password: req.body.password,
                    file: req.file
            
                };
                userModel.update(user, function(status){
            
                    if(status){
                
                        console.log("Updated");
                        res.redirect('/customerhome/profile');
                      
                    }
                    else{
                          console.log("Error");  
                    }
                });
          
})
        

router.get('/deletemedicine/:id', (req, res)=>{
    var user = {
        id: req.params.id
    };
    
    res.render('admin/user/deletemedicine',user);
});

router.post('/deletemedicine/:id', (req, res)=>{
    var inputValue = req.body.vote;
    if (inputValue == "Delete"){
    var user = {
        id: req.params.id
      
    };
    userModel.delete11(user, function(status){

        if(status){
    
            console.log("deleted");
            res.redirect('/adminhome/medicinelist');
          
        }
        else{
              console.log("Error");  
        }
});}
else{
    res.redirect('/adminhome/medicinelist');
}
})               
 
    
   


module.exports = router;