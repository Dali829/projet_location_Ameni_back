import mongoose from 'mongoose';

const VeloSchema = new mongoose.Schema({
    name:{
        type:String ,
        required:true
    },
    typeV:{
        type:String ,
        required:true
    },
    type:{
        type:String ,
        required:true
    },
    photos:{
        type:[String] ,
        
    },
    desc:{
        type:String ,
        required:true
    },
    rating:{
        type:Number ,
        min:0,
        max:5
    },
    price:{
        type:Number,
        required:true

    },
    featured:{
        type:Boolean,
        default:false
    }
    ,
    reserved:{
        type:Boolean,
        default:false
    }
});
export default mongoose.model("Velo",VeloSchema)