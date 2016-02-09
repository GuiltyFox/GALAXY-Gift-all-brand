.class public Lcom/facebook/android/PostEvents;
.super Ljava/lang/Object;
.source "PostEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/PostEvents$PostListener;
    }
.end annotation


# static fields
.field private static mPostListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/android/PostEvents$PostListener;",
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

    sput-object v0, Lcom/facebook/android/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPostListener(Lcom/facebook/android/PostEvents$PostListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/PostEvents$PostListener;

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/android/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public static clearPostListener()V
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/facebook/android/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 25
    return-void
.end method

.method public static onPostBegin()V
    .registers 3

    .prologue
    .line 28
    sget-object v1, Lcom/facebook/android/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "listener":Lcom/facebook/android/PostEvents$PostListener;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 31
    return-void

    .line 28
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/facebook/android/PostEvents$PostListener;
    check-cast v0, Lcom/facebook/android/PostEvents$PostListener;

    .line 29
    .restart local v0    # "listener":Lcom/facebook/android/PostEvents$PostListener;
    invoke-interface {v0}, Lcom/facebook/android/PostEvents$PostListener;->onPostBegin()V

    goto :goto_6
.end method

.method public static onPostError(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V
    .registers 5
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "postData"    # Lcom/samsung/privilege/PostData;

    .prologue
    .line 46
    sget-object v1, Lcom/facebook/android/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 49
    return-void

    .line 46
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/android/PostEvents$PostListener;

    .line 47
    .local v0, "listener":Lcom/facebook/android/PostEvents$PostListener;
    invoke-interface {v0, p0, p1}, Lcom/facebook/android/PostEvents$PostListener;->onPostFail(Ljava/lang/String;Lcom/samsung/privilege/PostData;)V

    goto :goto_6
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
            "Lcom/samsung/privilege/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    sget-object v1, Lcom/facebook/android/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 37
    return-void

    .line 34
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/android/PostEvents$PostListener;

    .line 35
    .local v0, "listener":Lcom/facebook/android/PostEvents$PostListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/android/PostEvents$PostListener;->onPostSucceed(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_6
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
            "Lcom/samsung/privilege/bean/BadgeAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    sget-object v1, Lcom/facebook/android/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 43
    return-void

    .line 40
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/android/PostEvents$PostListener;

    .line 41
    .local v0, "listener":Lcom/facebook/android/PostEvents$PostListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/android/PostEvents$PostListener;->onPostReviewSucceed(Lorg/json/JSONObject;ILjava/util/ArrayList;)V

    goto :goto_6
.end method

.method public static onPremiumChanged()V
    .registers 3

    .prologue
    .line 52
    sget-object v1, Lcom/facebook/android/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "listener":Lcom/facebook/android/PostEvents$PostListener;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 55
    return-void

    .line 52
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/facebook/android/PostEvents$PostListener;
    check-cast v0, Lcom/facebook/android/PostEvents$PostListener;

    .line 53
    .restart local v0    # "listener":Lcom/facebook/android/PostEvents$PostListener;
    invoke-interface {v0}, Lcom/facebook/android/PostEvents$PostListener;->onPremiumChanged()V

    goto :goto_6
.end method

.method public static removePostListener(Lcom/facebook/android/PostEvents$PostListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/facebook/android/PostEvents$PostListener;

    .prologue
    .line 20
    sget-object v0, Lcom/facebook/android/PostEvents;->mPostListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
