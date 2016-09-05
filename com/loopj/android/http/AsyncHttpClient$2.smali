.class Lcom/loopj/android/http/AsyncHttpClient$2;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$2;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 9

    .prologue
    .line 235
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v1

    .line 236
    if-nez v1, :cond_7

    .line 248
    :cond_6
    :goto_6
    return-void

    .line 239
    :cond_7
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_6

    .line 241
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->e()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    .line 242
    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 243
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;

    invoke-direct {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->a(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_6

    .line 241
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method
