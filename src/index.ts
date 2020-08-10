import express from 'express';
import { PORT } from './config/constants';

const app = express();
app.use(express.json());

console.log('hello');

app.get('/', (req, res) => {
    res.end('hello')
})

app.listen(PORT, () => {
  console.log(`Server is listening on port ${PORT}`);
});
