.class public Lcom/bzbs/lib/survey/util/async/PostEvents;
.super Ljava/lang/Object;
.source "PostEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    }
.end annotation


# static fields
.field private static mPostListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bzbs/lib/survey/util/async/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPostListener(Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;

    .prologue
    .line 15
    sget-object v0, Lcom/bzbs/lib/survey/util/async/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public static clearPostListener()V
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/bzbs/lib/survey/util/async/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 24
    return-void
.end method

.method public static onPostBegin()V
    .registers 3

    .prologue
    .line 27
    sget-object v1, Lcom/bzbs/lib/survey/util/async/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "listener":Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    check-cast v0, Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;

    .line 28
    .restart local v0    # "listener":Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    invoke-interface {v0}, Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;->onPostBegin()V

    goto :goto_6

    .line 30
    :cond_16
    return-void
.end method

.method public static onPostError(Ljava/lang/String;Lcom/bzbs/lib/survey/util/async/PostData;)V
    .registers 5
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "postData"    # Lcom/bzbs/lib/survey/util/async/PostData;

    .prologue
    .line 45
    sget-object v1, Lcom/bzbs/lib/survey/util/async/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;

    .line 46
    .local v0, "listener":Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    invoke-interface {v0, p0, p1}, Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;->onPostFail(Ljava/lang/String;Lcom/bzbs/lib/survey/util/async/PostData;)V

    goto :goto_6

    .line 48
    .end local v0    # "listener":Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    :cond_16
    return-void
.end method

.method public static onPostSuccess(Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "points"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/BadgeAlert;>;"
    sget-object v1, Lcom/bzbs/lib/survey/util/async/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;

    .line 34
    .local v0, "listener":Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;->onPostSucceed(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_6

    .line 36
    .end local v0    # "listener":Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    :cond_16
    return-void
.end method

.method public static onPostSuccessReview(Lorg/json/JSONObject;ILjava/util/ArrayList;)V
    .registers 6
    .param p0, "jsonRoot"    # Lorg/json/JSONObject;
    .param p1, "points"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/BadgeAlert;>;"
    sget-object v1, Lcom/bzbs/lib/survey/util/async/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;

    .line 40
    .local v0, "listener":Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;->onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V

    goto :goto_6

    .line 42
    .end local v0    # "listener":Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;
    :cond_16
    return-void
.end method

.method public static removePostListener(Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/bzbs/lib/survey/util/async/PostEvents$PostListener;

    .prologue
    .line 19
    sget-object v0, Lcom/bzbs/lib/survey/util/async/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method
