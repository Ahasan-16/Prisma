import { NextResponse } from "next/server";
import { PrismaClient } from '/src/generated/prisma'

export async function POST(req, res) {
    try{
       const reqbody= await req.json();
       const prisma=new PrismaClient();
      let result= await prisma.Employee.create({
           data:{
               name:"Mohammad Ahasan3",
               designation:"Engineer3",
               city:"Chattogram3",
               salary:12345
           }
       })
       return NextResponse.json({status:200, data:result});
    }
    catch (e) {
        return NextResponse.json({status:500, data:e});
    }
}