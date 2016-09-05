.class public Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;
.super Ljava/lang/Object;
.source "BasicSchemeFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;


# instance fields
.field private final a:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>(Ljava/nio/charset/Charset;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;->a:Ljava/nio/charset/Charset;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 3

    .prologue
    .line 64
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 4

    .prologue
    .line 68
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method
