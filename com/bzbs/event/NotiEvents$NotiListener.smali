.class public interface abstract Lcom/bzbs/event/NotiEvents$NotiListener;
.super Ljava/lang/Object;
.source "NotiEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/event/NotiEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotiListener"
.end annotation


# virtual methods
.method public abstract onNotiCleared()V
.end method

.method public abstract onNotiReceived(Ljava/lang/String;)V
.end method
