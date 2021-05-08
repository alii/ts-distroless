import fastify from 'fastify';

const app = fastify();

app.get("/", (req, res) => {
  res.send("Hello, world!");
});

void app.listen(process.env.PORT || 8080, "0.0.0.0");
