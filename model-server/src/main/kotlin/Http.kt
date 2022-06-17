package org.modelix.mps.rest.model.access.server

import io.netty.buffer.Unpooled
import io.netty.channel.Channel
import io.netty.handler.codec.http.HttpRequest
import io.netty.handler.codec.http.HttpResponseStatus
import io.netty.util.CharsetUtil
import org.apache.http.entity.ContentType
import org.jetbrains.io.response
import org.jetbrains.io.send

fun respondInternalServerError(request: HttpRequest, channel: Channel, msg : String? = "Internal error") {
    val response = response(
        ContentType.TEXT_PLAIN.mimeType,
        Unpooled.copiedBuffer(msg , CharsetUtil.UTF_8)
    )
    response.status = HttpResponseStatus.INTERNAL_SERVER_ERROR
    response.send(channel,request)
}

fun respondOk(request: HttpRequest, channel: Channel, content : ByteArray){
    val response = response(
        ContentType.APPLICATION_JSON.mimeType,
        Unpooled.copiedBuffer(content)
    )
    response.status = HttpResponseStatus.OK
    response.send(channel,request)
}

fun respondMethodNotAllowed(request: HttpRequest, channel: Channel, msg : String? = "Method not allowed"){
    val response = response(
        ContentType.TEXT_PLAIN.mimeType,
        Unpooled.copiedBuffer(msg , CharsetUtil.UTF_8)
    )
    response.status = HttpResponseStatus.METHOD_NOT_ALLOWED
    response.send(channel,request)
}

fun respondBadRequest(request : HttpRequest, channel: Channel, msg : String? = "Unexpected request"){
    val response = response(
        ContentType.TEXT_PLAIN.mimeType,
        Unpooled.copiedBuffer(msg , CharsetUtil.UTF_8)
    )
    response.status = HttpResponseStatus.BAD_REQUEST
    response.send(channel,request)
}

fun respondNotFoundError(request: HttpRequest, channel: Channel, msg : String? = "Not found") {
    val response = response(
        ContentType.TEXT_PLAIN.mimeType,
        Unpooled.copiedBuffer(msg , CharsetUtil.UTF_8)
    )
    response.status = HttpResponseStatus.NOT_FOUND
    response.send(channel,request)
}