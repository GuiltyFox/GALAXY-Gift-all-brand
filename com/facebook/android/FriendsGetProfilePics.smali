.class public Lcom/facebook/android/FriendsGetProfilePics;
.super Ljava/lang/Object;
.source "FriendsGetProfilePics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;,
        Lcom/facebook/android/FriendsGetProfilePics$ItemPair;
    }
.end annotation


# static fields
.field static final MAX_ALLOWED_TASKS:I = 0xf


# instance fields
.field friendsImages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field listener:Landroid/widget/BaseAdapter;

.field positionRequested:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field queue:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/facebook/android/FriendsGetProfilePics$ItemPair;",
            ">;"
        }
    .end annotation
.end field

.field runningCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/android/FriendsGetProfilePics;->runningCount:I

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/facebook/android/FriendsGetProfilePics;->friendsImages:Ljava/util/Hashtable;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/facebook/android/FriendsGetProfilePics;->positionRequested:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/facebook/android/FriendsGetProfilePics;->queue:Ljava/util/Stack;

    .line 30
    return-void
.end method


# virtual methods
.method public getImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lcom/facebook/android/FriendsGetProfilePics;->friendsImages:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 54
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_c

    .line 66
    .end local v0    # "image":Landroid/graphics/Bitmap;
    :goto_b
    return-object v0

    .line 57
    .restart local v0    # "image":Landroid/graphics/Bitmap;
    :cond_c
    iget-object v2, p0, Lcom/facebook/android/FriendsGetProfilePics;->positionRequested:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 58
    iget-object v2, p0, Lcom/facebook/android/FriendsGetProfilePics;->positionRequested:Ljava/util/Hashtable;

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget v2, p0, Lcom/facebook/android/FriendsGetProfilePics;->runningCount:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_2d

    .line 60
    iget-object v2, p0, Lcom/facebook/android/FriendsGetProfilePics;->queue:Ljava/util/Stack;

    new-instance v3, Lcom/facebook/android/FriendsGetProfilePics$ItemPair;

    invoke-direct {v3, p0, p1, p2}, Lcom/facebook/android/FriendsGetProfilePics$ItemPair;-><init>(Lcom/facebook/android/FriendsGetProfilePics;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    :goto_2b
    move-object v0, v1

    .line 66
    goto :goto_b

    .line 62
    :cond_2d
    iget v2, p0, Lcom/facebook/android/FriendsGetProfilePics;->runningCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/android/FriendsGetProfilePics;->runningCount:I

    .line 63
    new-instance v2, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;

    invoke-direct {v2, p0, v1}, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;-><init>(Lcom/facebook/android/FriendsGetProfilePics;Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2b
.end method

.method public getNextImage()V
    .registers 6

    .prologue
    .line 70
    iget-object v1, p0, Lcom/facebook/android/FriendsGetProfilePics;->queue:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 71
    iget-object v1, p0, Lcom/facebook/android/FriendsGetProfilePics;->queue:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/android/FriendsGetProfilePics$ItemPair;

    .line 72
    .local v0, "item":Lcom/facebook/android/FriendsGetProfilePics$ItemPair;
    new-instance v1, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;-><init>(Lcom/facebook/android/FriendsGetProfilePics;Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/facebook/android/FriendsGetProfilePics$ItemPair;->uid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/facebook/android/FriendsGetProfilePics$ItemPair;->url:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    .end local v0    # "item":Lcom/facebook/android/FriendsGetProfilePics$ItemPair;
    :cond_26
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/android/FriendsGetProfilePics;->positionRequested:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/android/FriendsGetProfilePics;->runningCount:I

    .line 44
    iget-object v0, p0, Lcom/facebook/android/FriendsGetProfilePics;->queue:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 45
    return-void
.end method

.method public setListener(Landroid/widget/BaseAdapter;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/facebook/android/FriendsGetProfilePics;->listener:Landroid/widget/BaseAdapter;

    .line 38
    invoke-virtual {p0}, Lcom/facebook/android/FriendsGetProfilePics;->reset()V

    .line 39
    return-void
.end method
