.class final Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->a(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;->a:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$2;->a:Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    .line 107
    return-void
.end method
