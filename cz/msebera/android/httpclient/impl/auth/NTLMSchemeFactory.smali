.class public Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;
.super Ljava/lang/Object;
.source "NTLMSchemeFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 3

    .prologue
    .line 49
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;-><init>()V

    return-object v0
.end method

.method public a(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .registers 3

    .prologue
    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;-><init>()V

    return-object v0
.end method
