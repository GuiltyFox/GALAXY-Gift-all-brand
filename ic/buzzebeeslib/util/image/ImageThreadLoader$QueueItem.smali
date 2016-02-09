.class final Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;
.super Ljava/lang/Object;
.source "ImageThreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/image/ImageThreadLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueItem"
.end annotation


# instance fields
.field public listener:Lic/buzzebeeslib/util/image/ImageThreadLoader$ImageLoadedListener;

.field final synthetic this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

.field public url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/util/image/ImageThreadLoader;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/util/image/ImageThreadLoader;Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;-><init>(Lic/buzzebeeslib/util/image/ImageThreadLoader;)V

    return-void
.end method
