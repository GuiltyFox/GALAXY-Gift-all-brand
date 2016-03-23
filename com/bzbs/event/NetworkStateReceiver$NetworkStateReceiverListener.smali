.class public interface abstract Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/event/NetworkStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkStateReceiverListener"
.end annotation


# virtual methods
.method public abstract networkAvailable()V
.end method

.method public abstract networkUnavailable()V
.end method
