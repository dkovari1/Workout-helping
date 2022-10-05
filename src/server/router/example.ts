import { createRouter } from "./context";
import { z } from "zod";

export const exampleRouter = createRouter()
  .query("getAll", {
    async resolve({ ctx }) {
      const userId = ctx.session?.user?.id
      return await ctx.prisma.workout.findMany({ where: { userId } });
    },
  });
