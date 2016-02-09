.class Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "PhotoTouchLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/image/PhotoTouchLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

.field public imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

.field final synthetic this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/util/image/PhotoTouchLoader;Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 4
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 219
    return-void
.end method

.method public constructor <init>(Lcom/samsung/privilege/util/image/PhotoTouchLoader;Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 4
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->this$0:Lcom/samsung/privilege/util/image/PhotoTouchLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 223
    iput-object p3, p0, Lcom/samsung/privilege/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .line 224
    return-void
.end method
