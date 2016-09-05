.class public Lcz/msebera/android/httpclient/conn/ssl/BrowserCompatHostnameVerifier;
.super Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;
.source "BrowserCompatHostnameVerifier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/ssl/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/conn/ssl/BrowserCompatHostnameVerifier;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const-string/jumbo v0, "BROWSER_COMPATIBLE"

    return-object v0
.end method
