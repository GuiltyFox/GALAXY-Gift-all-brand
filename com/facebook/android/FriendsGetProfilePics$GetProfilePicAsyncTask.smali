.class Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;
.super Landroid/os/AsyncTask;
.source "FriendsGetProfilePics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/FriendsGetProfilePics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProfilePicAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/android/FriendsGetProfilePics;

.field uid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/android/FriendsGetProfilePics;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->this$0:Lcom/facebook/android/FriendsGetProfilePics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/android/FriendsGetProfilePics;Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;)V
    .registers 3

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;-><init>(Lcom/facebook/android/FriendsGetProfilePics;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 84
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->uid:Ljava/lang/String;

    .line 85
    const/4 v1, 0x1

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/android/Utility;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->this$0:Lcom/facebook/android/FriendsGetProfilePics;

    iget v1, v0, Lcom/facebook/android/FriendsGetProfilePics;->runningCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/facebook/android/FriendsGetProfilePics;->runningCount:I

    .line 92
    if-eqz p1, :cond_1f

    .line 93
    iget-object v0, p0, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->this$0:Lcom/facebook/android/FriendsGetProfilePics;

    iget-object v0, v0, Lcom/facebook/android/FriendsGetProfilePics;->friendsImages:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->this$0:Lcom/facebook/android/FriendsGetProfilePics;

    iget-object v0, v0, Lcom/facebook/android/FriendsGetProfilePics;->listener:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 95
    iget-object v0, p0, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->this$0:Lcom/facebook/android/FriendsGetProfilePics;

    invoke-virtual {v0}, Lcom/facebook/android/FriendsGetProfilePics;->getNextImage()V

    .line 97
    :cond_1f
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/android/FriendsGetProfilePics$GetProfilePicAsyncTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
