.class Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "EntityEnclosingRequestWrapper.java"


# instance fields
.field final synthetic a:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 3

    .prologue
    .line 89
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->a:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    .line 90
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 91
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->a:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->a(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 96
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->consumeContent()V

    .line 97
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->a:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->a(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 102
    invoke-super {p0}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->a:Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->a(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Z)Z

    .line 108
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 109
    return-void
.end method
