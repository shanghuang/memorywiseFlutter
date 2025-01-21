import { MongoDataSource } from 'apollo-datasource-mongodb';
import { ObjectId } from 'mongodb';
import { UserDocument, Context } from '../../types/types';

//export default class Users extends MongoDataSource<UserDocument, Context> {
export default class Users extends MongoDataSource<UserDocument> {
  getAllUsers() {
    return this.collection.find().toArray();
  }

  getUser(userId: ObjectId) {
    return this.collection.findOne({_id: new ObjectId(userId)});
  }

  createUser(username: string, password: string, email: string) {
    return this.collection.insertMany([{username, password, email}]);
  }
}