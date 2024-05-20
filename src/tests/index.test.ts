import {it , describe, expect, beforeAll, beforeEach} from 'vitest'
import request from 'supertest'
import resetDb from '../helpers/reset-db'
import { app } from '..'

describe("Check sum function " , () =>
{
    beforeEach(() =>
    {
        console.log("resetting db")
        resetDb();
    })
    it("Add 2 and 3" , async() =>
    {
        const res = await request(app).post("/sum").send({
            a : 2 ,
            b : 3
        })
        
        
        expect(res.status).toBe(200);
        expect(res.body).toEqual({answer: 5 , id : expect.any(Number)});
    })

    it("add two large numbers" , async() =>
    {
        const res = await request(app).post("/sum").send({
            a : 10000000000,
            b : 1000
        });

        expect(res.status).toBe(422);
    })
})