.class final Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;
.super Ljava/lang/Object;
.source "ImageThreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueItem"
.end annotation


# instance fields
.field public listener:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$ImageLoadedListener;

.field final synthetic this$0:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;

.field public url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;->this$0:Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;
    .param p2, "x1"    # Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/bzbs/lib/survey/util/image/ImageThreadLoader$QueueItem;-><init>(Lcom/bzbs/lib/survey/util/image/ImageThreadLoader;)V

    return-void
.end method
