.class Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;
.super Ljava/lang/Object;
.source "UrlEncodedFormBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final synthetic b:Lcom/koushikdutta/async/ByteBufferList;

.field final synthetic c:Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 4

    .prologue
    .line 75
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->c:Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 78
    if-eqz p1, :cond_8

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 89
    :goto_7
    return-void

    .line 83
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->c:Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/http/Multimap;->c(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;->a(Lcom/koushikdutta/async/http/body/UrlEncodedFormBody;Lcom/koushikdutta/async/http/Multimap;)Lcom/koushikdutta/async/http/Multimap;

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    goto :goto_7

    .line 86
    :catch_1e
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/UrlEncodedFormBody$2;->a:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_7
.end method
