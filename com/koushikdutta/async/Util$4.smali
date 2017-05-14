.class final Lcom/koushikdutta/async/Util$4;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/DataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataEmitter;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/koushikdutta/async/Util$4;->a:Lcom/koushikdutta/async/DataEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/koushikdutta/async/Util$4;->a:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->k()V

    .line 137
    return-void
.end method
