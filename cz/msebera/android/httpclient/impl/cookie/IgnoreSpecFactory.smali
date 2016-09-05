.class public Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecFactory;
.super Ljava/lang/Object;
.source "IgnoreSpecFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;-><init>()V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;-><init>()V

    return-object v0
.end method
