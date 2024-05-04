# Test Cloudflare Pages - Nuxt - Realm (realm-web)

App created following [this official guide](https://developers.cloudflare.com/pages/framework-guides/deploy-a-nuxt-site) by Cloudflare, in conjunction with [this official guide][https://www.prisma.io/docs/orm/prisma-client/deployment/edge/deploy-to-cloudflare] by Prisma

---

## Goal

Find a solution for using Prisma within Cloudflare Pages or a technical explanation of why it cannot be used.

---

## Foreword

- Use the wrangler.toml file

- Add `compatibility_flags = [ "nodejs_compat" ]` to enable the use of Node packages within edge environments

---

## Implementation

- Add Prisma packages with `npm add prisma @prisma/client @prisma/adapter-d1` command
- Follow this [official Cloudflare guide](https://developers.cloudflare.com/d1/tutorials/d1-and-prisma-orm/#4-create-a-table-in-the-database):
  - Create a db
  - Bindung the the db in wrangler.toml
  - Add `compatibility_flags = ["nodejs_compat"]` in wrangler.toml
  - Set `migrations_dir` var in wrangler.toml for a custom migrations directory
  - Create users table in the database (locally and remotely)
  - Create the prisma client with `npx prisma generate`
- Add the /server/api/test.ts file making a simple query

**NOTE**: Use a custom .output folder (set in the schema.prisma file) to avoid the error "Could not load /opt/buildhome/repo/node_modules/.prisma/client/query_engine_bg.wasm?module (imported by node_modules/.prisma/client/wasm-edge-light-loader.js): ENOENT: no such file or directory".

---

## Result

Cloudflare build results in Success, but visiting the [test page](test-cloudflare-pages-nuxt-d1-prisma.pages.dev/api/test) results in Error:

```plain-text
500: Cannot read properties of undefined (reading 'exec').
```
