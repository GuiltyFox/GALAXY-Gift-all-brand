.class final Lokhttp3/internal/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/Util;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 253
    iput-object p1, p0, Lokhttp3/internal/Util$1;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/Util$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lokhttp3/internal/Util$1;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 256
    iget-boolean v1, p0, Lokhttp3/internal/Util$1;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 257
    return-object v0
.end method
