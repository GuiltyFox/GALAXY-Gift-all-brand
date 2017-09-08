.class public Lcom/bzbs/event/NotiEvents;
.super Ljava/lang/Object;
.source "NotiEvents.java"


# static fields
.field private static a:Ljava/util/LinkedList;
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
    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bzbs/event/NotiEvents;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcom/bzbs/event/NotiEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/NotiEvents$NotiListener;

    .line 31
    invoke-interface {v0}, Lcom/bzbs/event/NotiEvents$NotiListener;->a()V

    goto :goto_6

    .line 33
    :cond_16
    return-void
.end method

.method public static a(Lcom/bzbs/event/NotiEvents$NotiListener;)V
    .registers 2

    .prologue
    .line 12
    sget-object v0, Lcom/bzbs/event/NotiEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 24
    sget-object v0, Lcom/bzbs/event/NotiEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/NotiEvents$NotiListener;

    .line 25
    invoke-interface {v0, p0, p1}, Lcom/bzbs/event/NotiEvents$NotiListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 27
    :cond_16
    return-void
.end method

.method public static b(Lcom/bzbs/event/NotiEvents$NotiListener;)V
    .registers 2

    .prologue
    .line 16
    sget-object v0, Lcom/bzbs/event/NotiEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method
