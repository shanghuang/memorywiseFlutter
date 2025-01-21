import { ObjectId } from 'mongodb';
import { Document } from "mongoose";

export interface UserDocument extends Document {
  _id: ObjectId
  username: string
  password: string
  email: string
}

export interface Context {
  loggedInUser: UserDocument
}

