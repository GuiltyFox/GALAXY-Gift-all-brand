.class public Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;
.super Lcz/msebera/android/httpclient/HttpException;
.source "TunnelRefusedException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcz/msebera/android/httpclient/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->a:Lcz/msebera/android/httpclient/HttpResponse;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Lcz/msebera/android/httpclient/HttpResponse;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->a:Lcz/msebera/android/httpclient/HttpResponse;

    return-object v0
.end method
