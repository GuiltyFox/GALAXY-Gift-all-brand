.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/Headers;

.field final synthetic b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/Headers;)V
    .registers 3

    .prologue
    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 69
    const-string/jumbo v0, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/Headers;->b(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 96
    :cond_f
    :goto_f
    return-void

    .line 73
    :cond_10
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->e()V

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object v1, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->d:Lcom/koushikdutta/async/LineEmitter;

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 77
    new-instance v0, Lcom/koushikdutta/async/http/body/Part;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->a:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/body/Part;-><init>(Lcom/koushikdutta/async/http/Headers;)V

    .line 78
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v1, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->i:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    if-eqz v1, :cond_32

    .line 79
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v1, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->i:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;->a(Lcom/koushikdutta/async/http/body/Part;)V

    .line 80
    :cond_32
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->e_()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v1

    if-nez v1, :cond_f

    .line 81
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->d()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_f

    .line 86
    :cond_4b
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->g:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v1, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->f:Lcom/koushikdutta/async/ByteBufferList;

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->b:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_f
.end method
