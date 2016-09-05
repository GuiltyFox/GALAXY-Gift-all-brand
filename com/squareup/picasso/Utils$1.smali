.class final Lcom/squareup/picasso/Utils$1;
.super Landroid/os/Handler;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/picasso/Utils;->a(Landroid/os/Looper;)V
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .prologue
    .line 382
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/squareup/picasso/Utils$1;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/squareup/picasso/Utils$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 385
    return-void
.end method
