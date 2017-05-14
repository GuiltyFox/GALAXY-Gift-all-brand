.class Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;
.super Ljava/lang/Object;
.source "AsyncSSLSocketWrapper.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncSSLSocketWrapper;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;->a:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;->a:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->j:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper$3;->a:Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->j:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->a()V

    .line 140
    :cond_d
    return-void
.end method
