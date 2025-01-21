import jwt from 'jsonwebtoken';
import {Request, Response, NextFunction } from "express";
//import {Request, Response, NextFunction  } from "express-serve-static-core";
import { CreateUserDto } from "../dtos/CreateUser.dto";

export interface RequestWithAuth extends Request {
    userId: string;
    email: string;
}

export function verifyToken(reqExpress: Request, res: Response, next:NextFunction) :void{
    //res.send('Hello World');
    const req = reqExpress as RequestWithAuth;
    console.log("verifyToken"); 
    console.log("req.header('Authorization')", req.header('Authorization'));

    const token = req.header('Authorization') || null;
    if (!token) {
        return;
        //res.status(401).json({ error: 'Access denied' });
    }

    try {
        const decoded:any = jwt.verify(token, 'secretkeyappearshere');
        req.userId = decoded.userId;
        req.email = decoded.email;
        console.log("decoded: "); console.log( decoded);
        next();
    } 
    catch (error) {
    //    res.status(401).json({ error: 'Invalid token' });
    }

}

/*
export async function verifyToken(req:Request<{},{},CreateUserDto, {}>, 
    res:Response, next:NextFunction) 
{
    console.log("verifyToken"); 
    console.log("req.header('Authorization')", req.header('Authorization'));

    const token = req.header('Authorization');
    if (!token) 
        return res.status(401).json({ error: 'Access denied' });
    
    try {
        const decoded = jwt.verify(token, 'secretkeyappearshere');
        req.userId = decoded.userId;
        req.email = decoded.email;
        console.log("decoded: "); console.log( decoded);
        next();
    } 
    catch (error) {
        res.status(401).json({ error: 'Invalid token' });
    }
 };
*/