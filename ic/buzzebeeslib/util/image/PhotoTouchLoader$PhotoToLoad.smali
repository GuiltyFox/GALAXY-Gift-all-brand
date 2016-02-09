.class Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "PhotoTouchLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/image/PhotoTouchLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

.field public imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

.field final synthetic this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/util/image/PhotoTouchLoader;Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 4
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .prologue
    .line 215
    iput-object p1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p2, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 218
    return-void
.end method

.method public constructor <init>(Lic/buzzebeeslib/util/image/PhotoTouchLoader;Ljava/lang/String;Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 4
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .prologue
    .line 220
    iput-object p1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .line 223
    return-void
.end method
