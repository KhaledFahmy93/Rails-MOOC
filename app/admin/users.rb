ActiveAdmin.register User do
    permit_params :email, :password, :password_confirmation ,:name ,:avatar ,:date_of_birth, :gender
end