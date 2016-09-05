.class public Lcz/msebera/android/httpclient/client/HttpResponseException;
.super Lcz/msebera/android/httpclient/client/ClientProtocolException;
.source "HttpResponseException.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    .line 45
    iput p1, p0, Lcz/msebera/android/httpclient/client/HttpResponseException;->a:I

    .line 46
    return-void
.end method
