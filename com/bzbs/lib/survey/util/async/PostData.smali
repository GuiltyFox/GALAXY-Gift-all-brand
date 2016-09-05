.class public Lcom/bzbs/lib/survey/util/async/PostData;
.super Ljava/lang/Object;
.source "PostData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public transient d:Ljava/io/File;

.field public transient e:Landroid/net/Uri;

.field public transient f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "user"

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/async/PostData;->b:Ljava/lang/String;

    return-void
.end method
