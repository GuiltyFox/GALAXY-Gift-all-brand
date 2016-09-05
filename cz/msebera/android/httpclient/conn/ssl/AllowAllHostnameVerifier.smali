.class public Lcz/msebera/android/httpclient/conn/ssl/AllowAllHostnameVerifier;
.super Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;
.source "AllowAllHostnameVerifier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 47
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string/jumbo v0, "ALLOW_ALL"

    return-object v0
.end method
