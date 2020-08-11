import { PORT } from './config/constants';

import app from './app';

app.listen(PORT, () => {
  console.log(`Server is listening on port ${PORT}`);
});
