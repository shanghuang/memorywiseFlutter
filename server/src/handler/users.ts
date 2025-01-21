import {Request, Response } from "express";
//import {Request, Response } from "express-serve-static-core";
import mongoose from "mongoose";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import { CreateUserDto } from "../dtos/CreateUser.dto";
import { UserLoginDto } from "../dtos/UserLogin.dto";
//import { User } from "../types/response";
import {connectMongoDB} from "../utility/mongodb";
import UserModel from "../graphql/models/userSchema";

export function getUsers(req: Request, res: Response) {
    res.send('Hello World');
}

export async function getUserById(req: Request<any, any, CreateUserDto, {}>, 
    res: Response, next: any) 
{
    try {
        console.log("getUserById");
        //await connectMongoDB();
        const userInfo: UserLoginDto = req.body;
        const user = await UserModel.findOne({_id: req.params.id});
        console.log("_id: " + req.params.id);
        //const users = new Users({ modelOrCollection: UserModel });
        console.log("user: " + user);
        //const user = await users.findUserByEmail({input: {email: credentials?.email}});
        if (!user) {
            console.log(req.params.id + " not foundt");
            return null;
        }

        console.log("user: "); console.log( user);
        //console.log(userInfo?.email + " password:" + userInfo?.password);

        res.status(200)
            .json({
                success: true,
                data: {
                    userId: user.id,
                    email: user.email,
                    //token: token
                },
            });

    }
    catch (error) {
        console.log("Error: Login", error);
    }
}

export async function createUser(req: Request<{},{},CreateUserDto, {}>, 
    res: Response, next: any) {
    
        //console.log("req.body: "); console.log(req.body);
        //const { userName, email, password } = await request.json();
        const user:CreateUserDto = req.body;

        //console.log("user: " + user);

        await connectMongoDB();
      
        const hashedPassword = await bcrypt.hash(user.password, 5);
      
        const newUser = new UserModel({
            name: user.name,
            email: user.email,
            password: hashedPassword,
        });
      
        try {
          await newUser.save();

        } catch (err: any) {
        }

        let token;
        try {
            token = jwt.sign(
                {
                    userId: newUser._id,
                    email: newUser.email
                },
                "secretkeyappearshere",
                { expiresIn: "1h" }
            );
        } catch (err) {
            const error = new Error("Error! Something went wrong.");
            return next(error);
        }
        res.status(201)
            .json({
                success: true,
                data: {
                    userId: newUser.id,
                    email: newUser.email,
                    token: token
                },
            });
}

export async function login(req: Request<{},{},UserLoginDto, {}>, 
    res: Response, next: any) {
    
    try {
        console.log("login");
        //await connectMongoDB();
        const userInfo: UserLoginDto = req.body;
        const user = await UserModel.findOne({email: userInfo?.email});
        console.log("email: " + userInfo?.email);
        //const users = new Users({ modelOrCollection: UserModel });
        console.log("user: " + user);
        //const user = await users.findUserByEmail({input: {email: credentials?.email}});
        if (!user) {
            console.log(userInfo?.email + " not foundt");
            return null;
        }

        console.log("user: " + user);
        console.log(userInfo?.email + " password:" + userInfo?.password);
        //const encodedPassword = encode_password(credentials?.password as string);

        const passwordsMatch = await bcrypt.compare(userInfo?.password, user.password);
        //const passwordsMatch = encodedPassword === user.password;
        console.log("passwordsMatch: " + passwordsMatch);
        if (!passwordsMatch) {
            return null;
        }
        console.log("authorize returning user id: " + user._id);
        let token;
        try {
            token = jwt.sign(
                {
                    userId: user._id,
                    email: userInfo.email
                },
                "secretkeyappearshere",
                { expiresIn: "1h" }
            );
        } catch (err) {
            const error = new Error("Error! Something went wrong.");
            return next(error);
        }
        res.status(200)
            .json({
                success: true,
                data: {
                    userId: user.id,
                    email: user.email,
                    token: token
                },
            });
    } catch (error) {
        console.log("Error: Login", error);
    }

}
