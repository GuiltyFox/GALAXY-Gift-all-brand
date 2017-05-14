.class final Lcom/koushikdutta/async/AsyncServer$1;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->a(Lcom/koushikdutta/async/SelectorWrapper;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/SelectorWrapper;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/SelectorWrapper;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$1;->a:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$1;->a:Lcom/koushikdutta/async/SelectorWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/SelectorWrapper;->h()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 139
    :goto_5
    return-void

    .line 136
    :catch_6
    move-exception v0

    .line 137
    const-string/jumbo v0, "NIO"

    const-string/jumbo v1, "Selector Exception? L Preview?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
