.class final Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;
.super Ljava/lang/Object;
.source "ImageThreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/image/ImageThreadLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueItem"
.end annotation


# instance fields
.field public listener:Lcom/samsung/privilege/util/image/ImageThreadLoader$ImageLoadedListener;

.field final synthetic this$0:Lcom/samsung/privilege/util/image/ImageThreadLoader;

.field public url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/util/image/ImageThreadLoader;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;->this$0:Lcom/samsung/privilege/util/image/ImageThreadLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/util/image/ImageThreadLoader;Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/privilege/util/image/ImageThreadLoader$QueueItem;-><init>(Lcom/samsung/privilege/util/image/ImageThreadLoader;)V

    return-void
.end method
