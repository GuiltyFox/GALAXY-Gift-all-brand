.class public Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;
.super Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
.source "EntityEnclosingRequestWrapper.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcz/msebera/android/httpclient/HttpEntity;

.field private b:Z


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 65
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->a(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Z)Z
    .registers 2

    .prologue
    .line 56
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->b:Z

    return p1
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 3

    .prologue
    .line 73
    if-eqz p1, :cond_d

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;-><init>(Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;Lcz/msebera/android/httpclient/HttpEntity;)V

    :goto_7
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->a:Lcz/msebera/android/httpclient/HttpEntity;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->b:Z

    .line 75
    return-void

    .line 73
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->a:Lcz/msebera/android/httpclient/HttpEntity;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->a:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->b:Z

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public expectContinue()Z
    .registers 3

    .prologue
    .line 78
    const-string/jumbo v0, "Expect"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_18

    const-string/jumbo v1, "100-continue"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;->a:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method
