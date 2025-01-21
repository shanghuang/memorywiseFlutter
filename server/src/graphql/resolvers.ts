import { GraphQLError } from 'graphql';
import mongoose, { ObjectId } from 'mongoose';

import { UserDocument } from '../types/types.js';

export const resolvers = {
  Query: {
    users: (_parent: any, _args: any, { dataSourses }) => {
      return  dataSourses.users.getAllUsers();
    },
    user: (_parent: any, { _id }, { dataSourses }) => {
      return dataSourses.users.getUser(_id)
        .then((res: UserDocument) => {
          if (!res) {
            throw new GraphQLError(
              `User with User Id ${_id} does not exist.`
            );
          }
          return res;
        });
    },

    queryPosts: async (_: any, { keyword }: any, context: any) => {
      console.log("resolvers.ts:queryPosts");
      try {
        console.log("Querying posts with keyword: ");  console.log(keyword);
        return await context.dataSources.posts.queryPosts({ keyword });
      } catch (error) {
        throw new Error("Failed to query posts");
      }
    },
    queryPostsById: async (_: any, { id }: any, context: any) => {
      try {
        return await context.dataSources.posts.queryPostById({ id });
      } catch (error) {
        throw new Error("Failed to query post by id");
      }
    },
    queryCommentsById: async (_: any, { id }: any, context: any) => {
      try {
        console.log("Querying comments with id:(resolver) ");  console.log(id);
        return await context.dataSources.comments.queryCommentsById({ id });
      } catch (error) {
        throw new Error("Failed to query comments by id");
      }
    },
    
  },
  Mutation: {
    createUser: (_parent: any, { username, password, email }, { dataSources }) => {
      return dataSources.users.createUser(username, password, email)
        .then((res: { insertedIds: ObjectId[]; }) => ({ _id: res.insertedIds[0], username, password, email }))
    },

    updateUser: async (_: any, { input }: any, context: any) => {
      try {
        return await context.dataSources.users.updateUser({ input });
      } catch (error) {
        throw new Error("Failed to update user");
      }
    },
    deleteUser: async (_: any, { id }: any, context: any) => {
      try {
        return await context.dataSources.users.deleteUser({ id });
      } catch (error) {
        throw new Error("Failed to delete user");
      }
    },
    //addPost: async (_: any, { post }: any, context: any) => {
    addPost: async (_: any, { post }: any, { dataSources }) => {
      try {
        console.log("Creating new post123:"); console.log(post);

        console.log("dataSources:"); 
        console.log(dataSources);
        console.log(dataSources.posts);
        console.log("dataSources.createPost:"); 
        console.log(dataSources.posts.createPost);
        const created = await dataSources.posts.createPost({
          post,
        });
        console.log("Created post:" + created);
        return created;
      } catch (error) {
        throw new Error("Failed to create post:" + error);
      }
    },

    addComment: async (_: any, { comment }: any, context: any) => {
      try {
        console.log("Creating new post:"); console.log(comment);

        console.log("dataSources:"); console.log(context.dataSources.comments.createComment);
        const created = await context.dataSources.comments.addComment({
          comment,
        });
        console.log("Created comment:" + created);
        return created;
      } catch (error) {
        throw new Error("Failed to create post:" + error);
      }
    },
  }
}