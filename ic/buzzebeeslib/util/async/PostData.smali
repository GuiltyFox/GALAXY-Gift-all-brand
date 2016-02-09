.class public Lic/buzzebeeslib/util/async/PostData;
.super Ljava/lang/Object;
.source "PostData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x372574b35d6b5f46L


# instance fields
.field public transient gBitmapImage:Landroid/graphics/Bitmap;

.field public gCampaignViewID:Ljava/lang/String;

.field public gIsPostToReview:Z

.field public transient gMediaFile:Ljava/io/File;

.field public gMessage:Ljava/lang/String;

.field public gModeMedia:I

.field public gName:Ljava/lang/String;

.field public gPAGE_MODE:I

.field public gPath:Ljava/lang/String;

.field public transient gPhotoUri:Landroid/net/Uri;

.field public gPlaceNewDetailID:Ljava/lang/String;

.field public gPlaceNewDetailName:Ljava/lang/String;

.field public gRating:Ljava/lang/String;

.field public gSrcLink:Ljava/lang/String;

.field public gSrcPicture:Ljava/lang/String;

.field public gUID:Ljava/lang/String;

.field public gUserType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "user"

    iput-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gUserType:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gMediaFile:Ljava/io/File;

    .line 75
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/util/async/PostData;->gPAGE_MODE:I

    .line 76
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    .line 77
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gUID:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gUserType:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gMessage:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gRating:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gCampaignViewID:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gPlaceNewDetailID:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gPlaceNewDetailName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gSrcLink:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lic/buzzebeeslib/util/async/PostData;->gSrcPicture:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lic/buzzebeeslib/util/async/PostData;->gIsPostToReview:Z

    .line 90
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "strPhotoUri":Ljava/lang/String;
    if-eqz v0, :cond_8a

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 92
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 93
    .local v1, "uriPhotoUri":Landroid/net/Uri;
    iput-object v1, p0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    .line 99
    .end local v1    # "uriPhotoUri":Landroid/net/Uri;
    :cond_8a
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gMediaFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 47
    iget v0, p0, Lic/buzzebeeslib/util/async/PostData;->gPAGE_MODE:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 48
    iget v0, p0, Lic/buzzebeeslib/util/async/PostData;->gModeMedia:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 49
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gUserType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gRating:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gCampaignViewID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gPlaceNewDetailID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gPlaceNewDetailName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gSrcLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gSrcPicture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 60
    iget-boolean v0, p0, Lic/buzzebeeslib/util/async/PostData;->gIsPostToReview:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 61
    iget-object v0, p0, Lic/buzzebeeslib/util/async/PostData;->gPhotoUri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 69
    return-void
.end method
