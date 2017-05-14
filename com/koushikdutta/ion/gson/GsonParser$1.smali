.class Lcom/koushikdutta/ion/gson/GsonParser$1;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "GsonParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/gson/GsonParser;->a(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture",
        "<TT;",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/ion/gson/GsonParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/gson/GsonParser;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    iput-object p1, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->b:Lcom/koushikdutta/ion/gson/GsonParser;

    iput-object p2, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 6

    .prologue
    .line 44
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 45
    new-instance v2, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;

    invoke-direct {v2, p1}, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;-><init>(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 47
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->b:Lcom/koushikdutta/ion/gson/GsonParser;

    iget-object v0, v0, Lcom/koushikdutta/ion/gson/GsonParser;->a:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_37

    .line 48
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->b:Lcom/koushikdutta/ion/gson/GsonParser;

    iget-object v3, v3, Lcom/koushikdutta/ion/gson/GsonParser;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 53
    :goto_19
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v2, v0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->j()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->i()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 55
    :cond_2e
    new-instance v0, Lcom/google/gson/JsonParseException;

    const-string/jumbo v1, "unable to parse json"

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_37
    iget-object v0, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 50
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_19

    .line 52
    :cond_43
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_19

    .line 56
    :cond_49
    iget-object v1, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->b:Lcom/koushikdutta/ion/gson/GsonParser;

    iget-object v1, v1, Lcom/koushikdutta/ion/gson/GsonParser;->b:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 57
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " can not be casted to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/koushikdutta/ion/gson/GsonParser$1;->b:Lcom/koushikdutta/ion/gson/GsonParser;

    iget-object v2, v2, Lcom/koushikdutta/ion/gson/GsonParser;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_81
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/ion/gson/GsonParser$1;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 41
    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/gson/GsonParser$1;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
