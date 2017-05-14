.class public abstract Lcom/koushikdutta/async/http/body/StreamPart;
.super Lcom/koushikdutta/async/http/body/Part;
.source "StreamPart.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/body/Part;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/io/InputStream;
.end method

.method public a(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 4

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/StreamPart;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 21
    invoke-static {v0, p1, p2}, Lcom/koushikdutta/async/Util;->a(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 26
    :goto_7
    return-void

    .line 23
    :catch_8
    move-exception v0

    .line 24
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_7
.end method
