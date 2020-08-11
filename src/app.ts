import express from "express";
const app = express();

app.use(express.json());

app.get('/', (req: any, res: any) => {
  res.send('hello');
});

export default app;
