import mongoose, { ObjectId} from 'mongoose';
import { ApolloServer } from '@apollo/server';
import { expressMiddleware } from '@apollo/server/express4';
import { ApolloServerPluginDrainHttpServer } from '@apollo/server/plugin/drainHttpServer';
import { GraphQLError } from 'graphql';
import express, { Router } from 'express';
import http from 'http';
import cors from 'cors';
import User  from './graphql/models/userSchema';
import Post  from './graphql/models/postSchema';
import Comments from "./graphql/models/commentsSchema";
import Users from './graphql/dataSources/users';
import Posts from './graphql/dataSources/Post';
import CommentsDS from "./graphql/dataSources/Comments";

import pkg from 'body-parser';
import { UserDocument } from './types/types.js';
const { json } = pkg;
import {resolvers} from './graphql/resolvers';
import {typeDefs} from './graphql/typedefs';
import userRouter from "./routes/users"
import {connectMongoDB} from "./utility/mongodb";

//await mongoose.connect('mongodb://127.0.0.1:27017/ragnemt');
await connectMongoDB();

const app = express();
const router = Router();

app.use('/api/users', express.json(), userRouter);

// Our httpServer handles incoming requests to our Express app.
// Below, we tell Apollo Server to "drain" this httpServer,
// enabling our servers to shut down gracefully.
const httpServer = http.createServer(app);

interface MyContext {
  dataSources?: {
    users: Users;
  };
}

const server = new ApolloServer<MyContext>({
  typeDefs,
  resolvers,
  plugins: [
    // Proper shutdown for the HTTP server.
    ApolloServerPluginDrainHttpServer({ httpServer }),
  ],
});
//await server.start();
await server.start();

app.use(
  "/api/graphql",
  cors<cors.CorsRequest>(),
  json(),
  expressMiddleware(server, {
    context: async ({ req }) => ({
      token: req.headers.token,
      dataSources: {
        //users: new Users(await UserModel.createCollection())
        users: new Users({ modelOrCollection: User }),
        posts : new Posts({ modelOrCollection: Post }),
        comments : new CommentsDS({ modelOrCollection: Comments }),
      }
    }),
  }),
);
app.listen({ port: 4000 }, () => console.log(`🚀 Server ready at http://localhost:4000`));

