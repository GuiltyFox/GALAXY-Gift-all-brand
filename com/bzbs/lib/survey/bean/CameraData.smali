.class public Lcom/bzbs/lib/survey/bean/CameraData;
.super Ljava/lang/Object;
.source "CameraData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x36aa54f881c82d0dL


# instance fields
.field public transient gBitmapImage:Landroid/graphics/Bitmap;

.field public gIsModeTakePhoto:Z

.field public transient gMediaFile:Ljava/io/File;

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

    .line 19
    const-string/jumbo v0, "user"

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/CameraData;->gUserType:Ljava/lang/String;

    return-void
.end method
