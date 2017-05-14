.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;->a:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;->a:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v0, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 92
    return-void
.end method
