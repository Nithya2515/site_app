# site_app

* Used jwt_sessions gem for sign up
* Closure_tree gem for site or plots

End points(local)
For SignUp:- POST- localhost:3000/signup

body- {
    "email": "nithya3@nit.com",
    "password":"123456",
    "password_confirmation": "123456"
}

response: {
    "csrf": "O0tZcz93yUYNvALSv+Kj9shjGtotgoHzsVvYZoJkiHTfxIa/X0yJUrD0dgJu9+Qco2Du+rM+BE0DfQz6QepP5g=="
}

POST- localhost:3000/signup

body: {
     "email": "nithya3@nit.com",
    "password":"123456"
}

For Plots: POSt localhost:3000/plots

body:{
    "name": "vodasite1"
}
Response: {
    "id": 4,
    "name": "vodasite1",
    "created_at": "2020-11-16T11:52:36.414Z",
    "updated_at": "2020-11-16T11:52:36.414Z",
    "parent_id": null
}

For Observations: POSt - localhost:3000/plots/plots_id:id/observations
localhost:3000/plots/1/observations

body: {
    "title": "Tool observation4 ",
    "description": "Tools are in good condition ",
    "plot_id": 1
}
response: {
    "id": 6,
    "title": "Tool observation4 ",
    "description": "Tools are in good condition ",
    "plot_id": 1,
    "created_at": "2020-11-16T11:54:45.063Z",
    "updated_at": "2020-11-16T11:54:45.063Z"
}


