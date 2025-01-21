import mongoose from "mongoose";
import config from "dotenv";

config.config();

//console.log("config", config.config());
//console.log("process.env", process.env);
//console.log("process.env.MONGODB_URI:", process.env.MONGODB_URI);
export const connectMongoDB = async () => {
  const url = process.env.MONGODB_URI;

  try {
    if (!url) {
      throw new Error("MONGODB_URI is not defined");
    }
    await mongoose.connect(url);
    console.log("Connected to MongoDB");
  } catch (error) {
    console.log("Error connecting to MongoDB: ", error);
  }
};
