suspend fun <T> MPSRemoteClient.loadModelSafe(block : suspend () -> T) : T {
        try{
            return block()
        }catch(e : ModelNotLoadedException){
            this.loadModelArea(e.modelId);
            return block()
        }
}