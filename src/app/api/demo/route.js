import { NextResponse } from "next/server";
import { PrismaClient } from '/src/generated/prisma'

export async function POST(req, res) {
    try{
        const {searchParams} = new URL(req.url);
        let id=parseInt(searchParams.get("id"));
        // let reqbody=await req.json(); postman teke data niye o update korte pari sei ketre data:reqbody

        const prisma = new PrismaClient();
        const result=await prisma.Employee.update({
            where: {id:id},
            data:{
                name:"MohammdAhasan1",
                designation:"MohammdAhasan3",
                city:"chat",

            }
        })


       return NextResponse.json({status:200, data:result});
    }
    catch (e) {
        return NextResponse.json({status:500, data:e});
    }
}