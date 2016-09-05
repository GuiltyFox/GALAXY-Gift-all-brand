.class public abstract Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;
.super Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;
.source "HttpEntityEnclosingRequestBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;


# instance fields
.field private entity:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 68
    .line 69
    invoke-super {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    .line 70
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    if-eqz v1, :cond_14

    .line 71
    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/CloneUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpEntity;

    iput-object v1, v0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    .line 73
    :cond_14
    return-object v0
.end method

.method public expectContinue()Z
    .registers 3

    .prologue
    .line 62
    const-string/jumbo v0, "Expect"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 63
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
    .line 54
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    .line 59
    return-void
.end method
