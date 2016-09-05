.class public Lcom/bzbs/event/PostEvents;
.super Ljava/lang/Object;
.source "PostEvents.java"


# static fields
.field private static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bzbs/event/PostEvents$PostListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bzbs/event/PostEvents;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/bzbs/event/PostEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/PostEvents$PostListener;

    .line 53
    invoke-interface {v0}, Lcom/bzbs/event/PostEvents$PostListener;->a()V

    goto :goto_6

    .line 55
    :cond_16
    return-void
.end method
