.class public Lcz/msebera/android/httpclient/conn/ssl/StrictHostnameVerifier;
.super Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;
.source "StrictHostnameVerifier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/conn/ssl/StrictHostnameVerifier;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string/jumbo v0, "STRICT"

    return-object v0
.end method
