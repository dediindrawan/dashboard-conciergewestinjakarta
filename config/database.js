module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('DATABASE_HOST', 'localhost'),
      port: env.int('DATABASE_PORT', 5432),
      database: env('DATABASE_NAME', 'dediindr_db_concierge_westin_jakarta'),
      user: env('DATABASE_USERNAME', 'dediindr_super_admin'),
      password: env('DATABASE_PASSWORD', 'F-$%M{8R+K)A'),
      ssl: env.bool('DATABASE_SSL', false),
    },
  },
});
