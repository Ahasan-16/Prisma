import { NextResponse } from "next/server";
import { PrismaClient } from '/src/generated/prisma'

export async function POST(req, res) {
    try{
        let prisma=new PrismaClient();
        let result=await prisma.User.create({
            data:{
                email:"ahasan2@gmail.com",
                password:"123456",
                profile:{
                    create:{
                        firstName:"Mohammad2",
                        lastName:"Ahasan2",
                        mobile:"0170000000",
                        city:"chattogram2",

                    }
                },
                post:{
                    create:{
                        title:"new",
                        description:"new post",
                    }
                }
            }
        })
       return NextResponse.json({status:200, data:result});
    }
    catch (e) {
        return NextResponse.json({status:500, data:e});
    }
}