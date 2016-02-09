.class Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;
.super Ljava/lang/Object;
.source "ImageThreadLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/image/ImageThreadLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/util/image/ImageThreadLoader;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/util/image/ImageThreadLoader;Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;-><init>(Lic/buzzebeeslib/util/image/ImageThreadLoader;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;)Lic/buzzebeeslib/util/image/ImageThreadLoader;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    # getter for: Lic/buzzebeeslib/util/image/ImageThreadLoader;->Queue:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/util/image/ImageThreadLoader;->access$0(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_f

    .line 64
    monitor-exit p0

    .line 103
    return-void

    .line 66
    :cond_f
    iget-object v2, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    # getter for: Lic/buzzebeeslib/util/image/ImageThreadLoader;->Queue:Ljava/util/ArrayList;
    invoke-static {v2}, Lic/buzzebeeslib/util/image/ImageThreadLoader;->access$0(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;

    .line 69
    .local v1, "item":Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;
    iget-object v2, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    # getter for: Lic/buzzebeeslib/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;
    invoke-static {v2}, Lic/buzzebeeslib/util/image/ImageThreadLoader;->access$1(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    # getter for: Lic/buzzebeeslib/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;
    invoke-static {v2}, Lic/buzzebeeslib/util/image/ImageThreadLoader;->access$1(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 71
    iget-object v2, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    # getter for: Lic/buzzebeeslib/util/image/ImageThreadLoader;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lic/buzzebeeslib/util/image/ImageThreadLoader;->access$2(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner$1;

    invoke-direct {v3, p0, v1}, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner$1;-><init>(Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 64
    .end local v1    # "item":Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;
    :catchall_4f
    move-exception v2

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_4f

    throw v2

    .line 85
    .restart local v1    # "item":Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;
    :cond_52
    :try_start_52
    iget-object v2, v1, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;->url:Ljava/net/URL;

    invoke-static {v2}, Lic/buzzebeeslib/util/image/ImageThreadLoader;->readBitmapFromNetwork(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 87
    iget-object v2, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    # getter for: Lic/buzzebeeslib/util/image/ImageThreadLoader;->Cache:Ljava/util/HashMap;
    invoke-static {v2}, Lic/buzzebeeslib/util/image/ImageThreadLoader;->access$1(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;->this$0:Lic/buzzebeeslib/util/image/ImageThreadLoader;

    # getter for: Lic/buzzebeeslib/util/image/ImageThreadLoader;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lic/buzzebeeslib/util/image/ImageThreadLoader;->access$2(Lic/buzzebeeslib/util/image/ImageThreadLoader;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner$2;

    invoke-direct {v3, p0, v1, v0}, Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner$2;-><init>(Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueRunner;Lic/buzzebeeslib/util/image/ImageThreadLoader$QueueItem;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_4f

    goto :goto_1
.end method
