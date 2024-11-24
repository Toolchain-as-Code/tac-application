import postgres from "https://deno.land/x/postgresjs/mod.js";

/* required environment variables:
 * - PGHOST
 * - PGPORT
 * - PGDATABASE
 * - PGUSER
 * - PGPASSWORD
 */

const sql = postgres();

Deno.serve(async (_req) => {
  const result = await sql`SELECT * FROM bachelor_thesis`;
  return new Response(JSON.stringify(result));
});
