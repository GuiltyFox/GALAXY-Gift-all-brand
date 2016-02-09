.class Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;
.super Ljava/lang/Object;
.source "PhotoTouchLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/image/PhotoTouchLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosQueue"
.end annotation


# instance fields
.field private photosToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/image/PhotoTouchLoader;)V
    .registers 3

    .prologue
    .line 233
    iput-object p1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->this$0:Lic/buzzebeeslib/util/image/PhotoTouchLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;)Ljava/util/Stack;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public Clean(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 4
    .param p1, "image"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 244
    return-void

    .line 239
    :cond_a
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;

    iget-object v1, v1, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouch:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    if-ne v1, p1, :cond_1c

    .line 240
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 242
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public Clean(Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;)V
    .registers 4
    .param p1, "image"    # Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    .prologue
    .line 247
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 253
    return-void

    .line 248
    :cond_a
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;

    iget-object v1, v1, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotoToLoad;->imageViewTouchOld:Lit/sephiroth/android/library/imagezoom/ImageViewTouchOld;

    if-ne v1, p1, :cond_1c

    .line 249
    iget-object v1, p0, Lic/buzzebeeslib/util/image/PhotoTouchLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 251
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
