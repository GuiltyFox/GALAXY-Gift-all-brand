.class Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager$MyHandler;
.super Landroid/os/Handler;
.source "AutoScrollViewPager.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)V
    .registers 3

    .prologue
    .line 232
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager$MyHandler;->a:Ljava/lang/ref/WeakReference;

    .line 234
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 252
    :cond_8
    :goto_8
    return-void

    .line 242
    :pswitch_9
    iget-object v0, p0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager$MyHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;

    .line 243
    if-eqz v0, :cond_8

    .line 244
    invoke-static {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    move-result-object v1

    invoke-static {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;->a(D)V

    .line 245
    invoke-virtual {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->j()V

    .line 246
    invoke-static {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    move-result-object v1

    invoke-static {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->c(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;->a(D)V

    .line 247
    invoke-static {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->d(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->b(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;)Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/control/autoscrollviewpager/CustomDurationScroller;->getDuration()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;->a(Lcom/bzbs/marketplace/control/autoscrollviewpager/AutoScrollViewPager;J)V

    goto :goto_8

    .line 240
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
