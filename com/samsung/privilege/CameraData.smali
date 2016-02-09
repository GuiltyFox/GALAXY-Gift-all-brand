.class public Lcom/samsung/privilege/CameraData;
.super Ljava/lang/Object;
.source "CameraData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient gBitmapImage:Landroid/graphics/Bitmap;

.field public gIsModeTakePhoto:Z

.field public gMediaFile:Ljava/io/File;

.field public gName:Ljava/lang/String;

.field public gPath:Ljava/lang/String;

.field public transient gPhotoUri:Landroid/net/Uri;

.field public gUID:Ljava/lang/String;

.field public gUserType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "user"

    iput-object v0, p0, Lcom/samsung/privilege/CameraData;->gUserType:Ljava/lang/String;

    .line 9
    return-void
.end method
