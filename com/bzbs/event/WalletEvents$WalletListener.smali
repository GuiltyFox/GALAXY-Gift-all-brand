.class public interface abstract Lcom/bzbs/event/WalletEvents$WalletListener;
.super Ljava/lang/Object;
.source "WalletEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/event/WalletEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WalletListener"
.end annotation


# virtual methods
.method public abstract onPaymentFail(Ljava/lang/String;)V
.end method

.method public abstract onPaymentSuccess(Ljava/lang/String;)V
.end method
