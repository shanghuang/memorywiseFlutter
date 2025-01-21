import express, {Router, Response } from "express";
import asyncHandler from "express-async-handler";


//import express, {Router, Request, Response, NextFunction  } from "express-serve-static-core";
import {getUsers,getUserById, createUser, login} from "../handler/users";
import {verifyToken} from  "../middleware/authMiddleware";

const userRouter = Router();

userRouter.get('/', getUsers);

userRouter.get('/:id', verifyToken , asyncHandler(getUserById));

userRouter.post('/', createUser);

userRouter.post('/login', login);

export default userRouter;
