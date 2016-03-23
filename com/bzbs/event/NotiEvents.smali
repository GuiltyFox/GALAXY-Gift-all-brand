.class public Lcom/bzbs/event/NotiEvents;
.super Ljava/lang/Object;
.source "NotiEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/event/NotiEvents$NotiListener;
    }
.end annotation


# static fields
.field private static mNotiListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bzbs/event/NotiEvents$NotiListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bzbs/event/NotiEvents;->mNotiListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNotiListener(Lcom/bzbs/event/NotiEvents$NotiListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/bzbs/event/NotiEvents$NotiListener;

    .prologue
    .line 10
    sget-object v0, Lcom/bzbs/event/NotiEvents;->mNotiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public static clearNotiListener()V
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/bzbs/event/NotiEvents;->mNotiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 19
    return-void
.end method

.method public static onNotiCleared()V
    .registers 3

    .prologue
    .line 28
    sget-object v1, Lcom/bzbs/event/NotiEvents;->mNotiListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "listener":Lcom/bzbs/event/NotiEvents$NotiListener;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/bzbs/event/NotiEvents$NotiListener;
    check-cast v0, Lcom/bzbs/event/NotiEvents$NotiListener;

    .line 29
    .restart local v0    # "listener":Lcom/bzbs/event/NotiEvents$NotiListener;
    invoke-interface {v0}, Lcom/bzbs/event/NotiEvents$NotiListener;->onNotiCleared()V

    goto :goto_6

    .line 31
    :cond_16
    return-void
.end method

.method public static onNotiReceived(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v1, Lcom/bzbs/event/NotiEvents;->mNotiListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/NotiEvents$NotiListener;

    .line 23
    .local v0, "listener":Lcom/bzbs/event/NotiEvents$NotiListener;
    invoke-interface {v0, p0}, Lcom/bzbs/event/NotiEvents$NotiListener;->onNotiReceived(Ljava/lang/String;)V

    goto :goto_6

    .line 25
    .end local v0    # "listener":Lcom/bzbs/event/NotiEvents$NotiListener;
    :cond_16
    return-void
.end method

.method public static removeNotiListener(Lcom/bzbs/event/NotiEvents$NotiListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/bzbs/event/NotiEvents$NotiListener;

    .prologue
    .line 14
    sget-object v0, Lcom/bzbs/event/NotiEvents;->mNotiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method
