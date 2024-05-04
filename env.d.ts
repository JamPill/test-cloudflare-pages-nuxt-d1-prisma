/// <reference types="@cloudflare/workers-types/2023-07-01" />

declare module "h3" {
  interface H3EventContext {
    cf: CfProperties;
    cloudflare: {
      request: Request;
      env: {
        CLOUDFLARE_D1_DB: D1Database;
      };
      context: ExecutionContext;
    };
  }
}

export {};
