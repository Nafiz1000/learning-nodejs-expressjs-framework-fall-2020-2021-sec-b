const db = require('./db');

module.exports= {
	validate: function(user, callback){
		var sql = "select * from user where UserName='"+user.username+"' and Password='"+user.password+"'";
		db.getResults(sql, function(results){
			if(results.length >0 ){
				callback(results[0].UserType);
			}else{
				callback(false);
			}
		});
	},
	getByUserName: function(user, callback){
		var sql = "select * from user where UserName='"+user.username+"'";
		db.getResults(sql, function(results){
			if(results.length >0 ){
				callback(results[0]);
			}else{
				callback(false);
			}
		})
	},







delete11: function(user, callback){
		var sql = "delete from medicine where id = '"+user.id+"'";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
	
		});

	},



getById11: function(id, callback){

		var sql = "select * from medicine where id='"+id+ "'";
		db.getResults(sql, function(result){
			callback(result);
		});
	},
	getAll11: function(user,callback){
		var sql = "select * from medicine";
		db.getResults(sql, function(results){
			callback(results);
		});
	},
	

		puechase: function(user, callback){
		
		console.log(user.type);
		var sql = "Insert into purchase (name,price,buy,date) VALUES('"+user.username+"','"+user.price+"','"+user.buy+"','"+user.date+"') where username = '"+user.username+"'";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},



	getById: function(id, callback){

		var sql = "select * from user where ID='"+id+ "'";
		db.getResults(sql, function(result){
			callback(result);
		});
	},
	getAll: function(user,callback){
		var sql = "select * from user where UserType='"+user+"' ";
		db.getResults(sql, function(results){
			callback(results);
		});
	},
	insert: function(user, callback){
		
		console.log(user.type);
		var sql = "Insert into user (Name,UserName,Email,ContactNo,NID,Gender,Address,UserType,Password) VALUES('"+user.name+"','"+user.username+"','"+user.email+"','"+user.contactno+"','"+user.nid+"','"+user.gender+"','"+user.address+"','"+user.type+"', '"+user.password+"')";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
	update:function(user, callback){
		var sql = "Update user set Name = '"+user.name+"',Email = '"+user.email+"',ContactNO = '"+user.contactno+"',Address = '"+user.address+"',Password = '"+user.password+"'where ID = '"+user.id+"'";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
	
		});
	},





	insert11: function(user, callback){
		
		console.log(user.type);
		var sql = "Insert into medicine (name,unitprice,VendorName,	quantity,Type) VALUES('"+user.name+"','"+user.price+"','"+user.comname+"','"+user.available+"','"+user.type+"')";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
	
	delete: function(user, callback){
		var sql = "delete from user where ID = '"+user.id+"'";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
	
		});

	},

	updateCustomer:function(user, callback){
		var sql = "Update user set Name = '"+user.name+"',ContactNO = '"+user.contactno+"',Email = '"+user.email+"',Address = '"+user.address+"' where UserName = '"+user.username+"'";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
    	});
	},
	salary:function(user, callback){
		var sql = "Insert into salary (ID,UserName,Salary,Date) VALUES('"+user.id+"','"+user.username+"','"+user.salary+"','"+user.date+"')";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
	
		});
	},

	search: (search, callback) => {
		var sql = "SELECT * FROM medicine WHERE id = '"+search+"' OR name = '"+search+"' OR unitprice = '"+search+"' OR VendorName = '"+search+"' OR quantity = '"+search+"' OR Type = '"+search+"'";
		db.getResults(sql, (results) => {
			callback(results);
		});
	},
	msg: function(user, callback){
		var sql = "Insert into messages (Message,SendFrom,SendTo,Date) VALUES('"+user.msg+"','"+user.sendfrom+"','"+user.sendto+"','"+user.date+"')";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},
	getByMsg: function(user,callback){
		var sql = "select Message,SendFrom,Date from mTamsg where SendTo='"+user+"' ";
		db.getResults(sql, function(result){
			callback(result);
		});
	},
	validate2: function(user, callback){
		var sql = "select * from medicine where name='"+user.username+"' and Type='"+user.type+"'";
		db.getResults(sql, function(results){
			if(results.length >0 ){
				callback(results[0].UserName);
			}else{
				callback(false);
			}
		});
	},
	getAll2: function(user,callback){
		var sql = "select * from user where UserName='"+user+"' ";
		db.getResults(sql, function(results){
			callback(results);
		});
	},
	transaction: function(user,callback){
		var sql = "select * from transaction ";
		db.getResults(sql, function(results){
			callback(results);
		});
	},
	salarylist: function(user,callback){
		var sql = "select * from salary ";
		db.getResults(sql, function(results){
			callback(results);
		});
	},
	validate3: function(user, callback){
		var sql = "select * from user where UserName='"+user.sendto+"' and UserType='"+user.type+"' ";
		db.getResults(sql, function(results){
			if(results.length >0 ){
				callback(results[0].UserName);
		
			}else{
				callback(false);
			}
		});
	}
	
}
