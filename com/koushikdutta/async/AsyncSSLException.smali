.class public Lcom/koushikdutta/async/AsyncSSLException;
.super Ljava/lang/Exception;
.source "AsyncSSLException.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 5
    const-string/jumbo v0, "Peer not trusted by any of the system trust managers."

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLException;->a:Z

    .line 6
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncSSLException;->a:Z

    return v0
.end method
