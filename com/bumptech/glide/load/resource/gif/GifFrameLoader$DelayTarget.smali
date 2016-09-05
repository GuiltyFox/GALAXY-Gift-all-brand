.class Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:I

.field private final c:J

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .registers 6

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->a:Landroid/os/Handler;

    .line 154
    iput p2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->b:I

    .line 155
    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->c:J

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->b:I

    return v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->d:Landroid/graphics/Bitmap;

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->a:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 167
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    .prologue
    .line 146
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
