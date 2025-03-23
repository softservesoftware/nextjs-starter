import NextAuth from "next-auth"
import { PrismaAdapter } from "@auth/prisma-adapter"
import { prisma } from "@/lib/prisma"
import Google from "next-auth/providers/google"

const handler = NextAuth({
  adapter: PrismaAdapter(prisma),
  providers: [Google],
})

export { handler as GET, handler as POST }