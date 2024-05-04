import { PrismaClient } from "~/prisma/client";
import { PrismaD1 } from "@prisma/adapter-d1";

//
//
//
//
//
//
//
//
//
//

export default defineEventHandler(async (event) => {
  const adapter = new PrismaD1(event.context.cloudflare.env.CLOUDFLARE_D1_DB);
  const prisma = new PrismaClient({ adapter });
    
  const res = await prisma.user.findMany();

  return {
    res,
  };
});
