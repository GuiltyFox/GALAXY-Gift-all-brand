.class Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$1;
.super Ljava/lang/Object;
.source "UrlEncodedFormBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic b:Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 3

    .prologue
    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$1;->b:Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$1;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$1;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 73
    return-void
.end method
