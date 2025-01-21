export const typeDefs = `#graphql

  scalar Date
    
  type Post{
      id: ID!
      text: String!
      date: Date!
  }

  type Friend{
      id:ID
      firstName:String
      lastName:String
      gender:Gender
      language:String
      age:Int
      email: String
      contacts:[Contact]
  }

  type User{
      _id:ID!
      firstName:String
      lastName:String
      username:String
      gender:Gender
      language:String
      age:Int
      email: String
      password: String
      address: String
      phoneNumber: String
      introduction:String
      contacts:[Contact]
      walletAddress: String
      privateKey : String
      coinName: String
      coinSymbol: String

  }

  input OrderInput{
      user:ID
      ken3Amount:Int
      ken5Amount:Int
      receiverName:String
      receiverAddress:String
      receiverPhone:String
      totalPrice:Int
      date:Date
  }

  type Order{
      id:ID
      user:ID
      ken3Amount:Int
      ken5Amount:Int
      receiverName:String
      receiverAddress:String
      receiverPhone:String
      totalPrice:Int
      date:Date
  }

  type Contact{
      firstName:String
      lastName:String
  }

  type Series {
      id:ID
      seriesName:String
      year:Int
      rating:Rating
  }

  enum Rating{
      ONE
      TWO
      THREE
  }

  enum Gender{
      MALE
      FEMALE
      OTHER
  }

  input SeriesInput{
      id:ID
      seriesName:String
      year:Int
      rating:Rating
  }

  input FriendInput{
      id:ID
      firstName:String
      lastName:String
      gender:Gender
      language:String
      age:Int
      email: String
      contacts:[ContactInput]
  }
  input UserInput{
      id:ID
      firstName:String
      lastName:String
      userName:String
      gender:Gender
      language:String
      age:Int
      email: String
      password: String
      address: String
      phoneNumber: String
      contacts:[ContactInput]
  }


  input ContactInput{
      firstName:String
      lastName:String
  }

  input PostInput{
      user:ID
      username:String
      keyword:String
      text:String
      image:String
      date:Date
  }

  input QAPost{
      user:ID
      text:String
      image:String
      date:Date
  }

  type PostOutput{
      id:ID
      user:ID
      username:String
      keyword:String
      text:String
      image:String
      date:Date
      comments:ID
  }

  type QAQuestionOutput{
      id:ID
      user:ID
      text:String
      image:String
      date:Date
      answers:ID

  }

  input QAAnswer{
      id:ID
      userId:ID
      question:ID
      text:String
      image:String
      date:Date
  }

  type QAAnswerOutput{
      id:ID
      userId:ID
      question:ID
      text:String
      image:String
      scoresId:ID
      date:Date
      totalScore:Int
      totalScorer:Int
  }

  input QAAnswerScore{
      id:ID
      userId:ID
      score:Int
      text:String
      date:Date
  }

  type QAAnswerScoreOutput{
      id:ID
      userId:ID
      username:String
      score:Int
      text:String
      date:Date
  }

  input CommentInput{
      parent:ID
      userId:ID
      username:String
      text:String
      date:Date
  }

  type Comments{
      id:ID
      comments:[Comment]
  }

  type Comment{
      id:ID
      parent:ID
      userId:ID
      username:String
      text:String
      comments:ID
      date:Date
  }

  type CommentOutput{
      id:ID
      userId:ID
      username:String
      text:String
      comments:ID
      date:Date
  }

  type CommentsOutput{
      id:ID
      comments:[CommentOutput]
  }

  input CoinInput{
      walletAddress: String
      privateKey : String
      coinName: String
      coinSymbol: String
  }

  type CoinOutput{
      walletAddress: String
      privateKey : String
      coinName: String
      coinSymbol: String
  }

  type Query{
      users: [User]
      user(_id: ID!): User
      queryPosts(keyword:String):[PostOutput]
      queryPostsById(id:ID!):PostOutput
      queryCommentsById(id:ID!):[CommentOutput]
  }

  type Mutation{
      createUser(username: String, password: String, email: String): User
      updateUser(id:ID!, input:UserInput):User
      deleteUser(id: ID!): String

      addPost(post:PostInput):PostOutput
      addComment(comment:CommentInput):CommentOutput
  }

`;

/**
 *
 * type Mutation {
    createUser(username: String, password: String, email: String): User
  }
*/