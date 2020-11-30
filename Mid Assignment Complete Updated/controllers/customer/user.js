const express = require('express');
const um = require.main.require('./models/AdminModel');

const router = express.Router();

router.get('/',(req,res)=>
{
    if(req.cookies['username'] == null)
    {
        res.redirect('/login');   
    }
    else
    {
       
        res.render('./customer/userhome');
        
       
    }
})



router.get('/profile', (req, res)=>{

    var user= req.cookies['username'];
    console.log(user);
    um.getAll2(user,function(results)
    {
       res.render('./customer/profile', {users: results});
    });
})


router.get('/update',(req,res)=>
{
    if(req.cookies['username'] == null)
    {
        res.redirect('/login');   
    }
    else
    {
        var user ={
            username:req.cookies['username']
        }
        um.getByUserName(user,(results)=>{
            results = {
                name:results.Name,
                email:results.Email,
                contactno:results.ContactNO,
                address:results.Address    
            }

            res.render('./customer/userupdate',results);
        })
    }
})
router.post('/update',(req,res)=>
{
    if(req.cookies['username'] == null)
    {
        res.redirect('/login');   
    }
    else
    {
        var user = {
            name:req.body.name,
            email:req.body.email,
            username:req.cookies['username'],
            address:req.body.address,
            contactno:req.body.phone,
        };
        um.updateCustomer(user,(status)=>{
            if(status)
            {
                res.redirect('/userhome');
            }
            else
            {
                res.redirect('/userhome/update');
            }
        });
    }
})

router.get('/medicinelist', (req, res)=>{
    var user="user";
    um.getAll11(user,function(results)
    {
       res.render('customer/medicinelist', {users: results});
    });
})




router.get('/buy/:id', (req, res)=>{
  
    um.getById11(req.params.id, (result) => {
        res.render('customer/buy', { user: result[0] });
    });
    
    
});

router.post('/buy/:id', (req, res)=>{
   
    var user = {
        username: req.cookies['username'],
        id: req.params.id,
        name:req.body.uname,
        price:req.body.price,
        date:req.body.date
    };
    um.puechase(user, function(status){

        if(status){
    
            console.log("Updated");
            res.redirect('customer/medicinelist')
        }
        else{
              console.log("Error"); 
        }

});
})

module.exports = router;