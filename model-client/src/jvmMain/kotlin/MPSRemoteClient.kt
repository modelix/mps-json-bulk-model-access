suspend fun <T> MPSRemoteClient.loadModelSafe(block: suspend () -> T): T {
    while(true) {
        try {
            return block()
        } catch (e: ModelNotLoadedException) {
            this.loadModelArea(e.modelId);
        }
    }
}