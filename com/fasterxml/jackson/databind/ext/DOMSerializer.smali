.class public Lcom/fasterxml/jackson/databind/ext/DOMSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "DOMSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 23
    const-class v0, Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 26
    :try_start_5
    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->newInstance()Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_15

    move-result-object v0

    .line 30
    const-string/jumbo v1, "LS"

    invoke-virtual {v0, v1}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/ls/DOMImplementationLS;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ext/DOMSerializer;->_domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;

    .line 31
    return-void

    .line 27
    :catch_15
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not instantiate DOMImplementationRegistry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 3

    .prologue
    .line 50
    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectAnyFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonAnyFormatVisitor;

    .line 51
    :cond_5
    return-void
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 5

    .prologue
    .line 45
    const-string/jumbo v0, "string"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ext/DOMSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    .prologue
    .line 18
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ext/DOMSerializer;->serialize(Lorg/w3c/dom/Node;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/w3c/dom/Node;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 6

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ext/DOMSerializer;->_domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Could not find DOM LS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_d
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ext/DOMSerializer;->_domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;

    invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;

    move-result-object v0

    .line 39
    invoke-interface {v0, p1}, Lorg/w3c/dom/ls/LSSerializer;->writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
