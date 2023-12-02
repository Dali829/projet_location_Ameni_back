import velo from "../models/velo.js";

export const createVelo = async (req,res,next)=>{
    const newVelo = new velo(req.body)
    try{
    const saveVelo = await newVelo.save()
    res.status(200).json(saveVelo)
    }
    catch(err){
        next(err);
    }

}
export const updateVelo = async (req,res,next)=>{
    try{
        const updateVelo = await velo.findByIdAndUpdate(req.params.id,{$set: req.body},{new:true})
        res.status(200).json(updateVelo)
        }
    catch(err){
        next(err);
    }

}
export const getVelo = async (req,res,next)=>{
    try{
        const Velo = await velo.findById(req.params.id)
        res.status(200).json(Velo)
        }
    catch(err){
        next(err);
    }

}
export const deleteVelo = async (req,res,next)=>{
    try{
        await velo.findByIdAndDelete(req.params.id)
       res.status(200).json(updateVelo)
       }
    catch(err){
        next(err);
    }

}
export const getAllVelo = async (req,res,next)=>{
    const failed = true;
    try{
    const Velos = await velo.find()
    res.status(200).json(Velos)
    }
    catch(err){
        next(err);
    }

}
