.class public Lcom/bzbs/marketplace/util/StickerEvents;
.super Ljava/lang/Object;
.source "StickerEvents.java"


# static fields
.field private static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bzbs/marketplace/util/StickerEvents$EventsListener;",
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

    sput-object v0, Lcom/bzbs/marketplace/util/StickerEvents;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/bzbs/marketplace/util/StickerEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 21
    return-void
.end method

.method public static a(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;)V
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lcom/bzbs/marketplace/util/StickerEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/util/StickerEvents$EventsListener;

    .line 25
    invoke-interface {v0, p0}, Lcom/bzbs/marketplace/util/StickerEvents$EventsListener;->a(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;)V

    goto :goto_6

    .line 27
    :cond_16
    return-void
.end method

.method public static a(Lcom/bzbs/marketplace/util/StickerEvents$EventsListener;)V
    .registers 2

    .prologue
    .line 12
    sget-object v0, Lcom/bzbs/marketplace/util/StickerEvents;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method
